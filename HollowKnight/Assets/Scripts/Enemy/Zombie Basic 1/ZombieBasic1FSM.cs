using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ZombieBasic1FSM : MonoBehaviour, IDamageable
{
    public enum State
    {
        Idle,
        Move,
        Turn,
        Attack,
        Damaged,
        Die
    }

    private State e_State;

    [SerializeField] private float maxHealth = 3.0f;
    [SerializeField] private float speed = 0.2f;

    private float currentHealth;

    private Animator anim;
    private Rigidbody2D rb;

    Vector2 wayPoint;

    private Transform player;

    [SerializeField] private float playerDistance = 5.0f;

    private void Start()
    {
        e_State = State.Idle;

        currentHealth = maxHealth;

        player = GameObject.FindGameObjectWithTag("Player").transform;

        anim = GetComponent<Animator>();
        rb = GetComponent<Rigidbody2D>();
    }

    private void Update()
    {
        switch (e_State)
        {
            case State.Idle:
                Idle();
                break;
            case State.Move:
                Move();
                break;
            case State.Turn:
                Turn();
                break;
            case State.Attack:
                Attack();
                break;
            case State.Damaged:
                break;
            case State.Die:
                break;
        }
    }

    private void Idle()
    {
        // Move 전환 조건
        StartCoroutine(MoveTransition());

        // Attack 전환 조건
        var dis = Vector2.Distance(transform.position, player.position);

        if (dis < playerDistance)
        {
            e_State = State.Attack;
            anim.SetTrigger("Attack");
        }
    }

    IEnumerator MoveTransition()
    {
        yield return new WaitForSeconds(1.0f);

        if (e_State == State.Idle)
        {
            e_State = State.Move;
            anim.SetTrigger("Walk");
        }
        else
        {
            StopCoroutine(IdleTransition());
        }
    }

    private void Move()
    {
        // Turn 전환 조건
        StartCoroutine(IdleTransition());

        // 24/3/12
        // 속도가 점점 올라가지 않게 조정 필요.
        rb.velocity = new Vector2(transform.position.x + transform.localScale.x * speed, rb.velocity.y);

        // Attack 전환 조건
        var dis = Vector2.Distance(transform.position, player.position);

        if (dis < playerDistance)
        {
            e_State = State.Attack;
            anim.SetTrigger("Attack");
        }
    }

    IEnumerator IdleTransition()
    {
        yield return new WaitForSeconds(3.0f);

        if (e_State == State.Move)
        {
            e_State = State.Turn;
            anim.SetTrigger("WalkToIdle");
        }
        else
        {
            StopCoroutine(MoveTransition());
        }
    }

    private void Turn()
    {
        // 오른쪽 방향
        if (transform.localScale.x > 0)
        {
            transform.localScale = new Vector3(-1, 0, 0);
        }
        // 왼쪽 방향
        else
        {
            transform.localScale = new Vector3(1, 0, 0);
        }

        //if (transform.rotation.y < 0f)
        //{
        //    Vector3 rotate = new Vector3(transform.rotation.x, 0f, transform.rotation.z);
        //    transform.rotation = Quaternion.Euler(rotate);
        //    e_State = State.Idle;
        //    Debug.Log(e_State);
        //}
        //else if (transform.rotation.y >= 0f)
        //{
        //    Vector3 rotate = new Vector3(transform.rotation.x, 180f, transform.rotation.z);
        //    transform.rotation = Quaternion.Euler(rotate);
        //    e_State = State.Idle;
        //    Debug.Log(e_State);
        //}
    }

    private void Attack()
    {
        anim.SetTrigger("Attack");

        // Idle 전환 조건
        var dis = Vector2.Distance(transform.position, player.position);

        if (dis > playerDistance)
        {
            e_State = State.Idle;
            anim.SetTrigger("AttackToIdle");
        }
    }

    public void Damage(float damageAmount)
    {
        currentHealth -= damageAmount;

        anim.SetTrigger("Attack");

        if (currentHealth <= 0)
        {
            Die();
        }
    }

    private void Die()
    {
        anim.SetTrigger("Death");
    }
}
