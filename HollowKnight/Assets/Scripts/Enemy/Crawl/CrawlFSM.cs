using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CrawlFSM : MonoBehaviour, IDamageable
{
    public enum State
    {
        Walk,
        Death
    }

    private State e_State;

    [SerializeField] private float maxHealth = 2.0f;
    [SerializeField] private float currentHealth;
    [SerializeField] private float speed;
    [SerializeField] private float circleRadius;
    private Rigidbody2D rb;
    private Animator anim;
    [SerializeField] GameObject groundCheck;
    [SerializeField] LayerMask groundLayer;
    [SerializeField] private bool facingRight;
    [SerializeField] private bool isGrounded;

    

    private void Start()
    {
        e_State = State.Walk;

        rb = GetComponent<Rigidbody2D>();
        anim = GetComponent<Animator>();
        currentHealth = maxHealth;
    }

    private void Update()
    {
        switch (e_State)
        {
            case State.Walk:
                Walk();
                break;
            case State.Death:
                break;
        }
    }

    private void Walk()
    {
        rb.velocity = Vector2.left * speed * Time.deltaTime;
        isGrounded = Physics2D.OverlapCircle(groundCheck.transform.position, circleRadius, groundLayer);
        if (!isGrounded && facingRight)
        {
            Flip();
        }
        else if (!isGrounded && !facingRight)
        {
            Flip();
        }
    }

    private void Flip()
    {
        facingRight = !facingRight;
        transform.Rotate(new Vector3(0, 180, 0));
        speed = -speed;
    }

    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.green;
        Gizmos.DrawWireSphere(groundCheck.transform.position, circleRadius);
    }

    // 피해를 입었을 때 실행되는 함수
    public void Damage(float damageAmount)
    {
        currentHealth -= damageAmount;

        if (currentHealth <= 0)
        {
            Death();
            e_State = State.Death;
        }
    }

    private void Death()
    {
        anim.SetTrigger("death");
        rb.gravityScale = 0;
        rb.bodyType = RigidbodyType2D.Static;
    }
}
