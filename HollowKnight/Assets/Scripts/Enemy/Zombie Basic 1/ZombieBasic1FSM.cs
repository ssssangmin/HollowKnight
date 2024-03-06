using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ZombieBasic1FSM : MonoBehaviour, IDamageable
{
    public enum State
    {
        Idle,
        Move,
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
        StartCoroutine(MoveTransition());

        // Attack 전환 조건
        player = GameObject.FindGameObjectWithTag("Player").transform;

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

        e_State = State.Move;
        anim.SetTrigger("Walk");
    }

    private void Move()
    {
        // Idle 전환 조건
        StartCoroutine(IdleTransition());

        

        // Attack 전환 조건
        player = GameObject.FindGameObjectWithTag("Player").transform;

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

        e_State = State.Idle;
        anim.SetTrigger("WalkToIdle");

        yield return new WaitForSeconds(1.0f);

        if (transform.rotation.y == 180f)
        {
            Vector3 rotate = new Vector3(transform.rotation.x, 0f, transform.rotation.z);
            transform.rotation = Quaternion.Euler(rotate);
        }
        else if (transform.rotation.y == 0f)
        {
            Vector3 rotate = new Vector3(transform.rotation.x, 180f, transform.rotation.z);
            transform.rotation = Quaternion.Euler(rotate);
        }
    }

    private void Attack()
    {

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
