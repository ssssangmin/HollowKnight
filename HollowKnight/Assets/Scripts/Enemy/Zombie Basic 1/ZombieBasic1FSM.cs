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

    private float delayTime;

    Vector2 wayPoint;

    private Transform player;

    [SerializeField] private float playerDistance = 5.0f;

    [HideInInspector] public bool isInRange;

    private void Start()
    {
        delayTime = 0;

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
                //Attack();
                break;
            case State.Damaged:
                break;
            case State.Die:
                break;
        }
    }

    private void Idle()
    {
        rb.velocity = new Vector2(0, rb.velocity.y);

        // Move 전환 조건
        float delayToMove = 1.0f;
        delayTime += Time.deltaTime;
        
        if (delayTime > delayToMove)
        {
            delayTime = 0;
            e_State = State.Move;
            anim.SetTrigger("Walk");
        }


        // Attack 전환 조건
        var dis = Vector2.Distance(transform.position, player.position);

        if (dis < playerDistance)
        {
            Debug.Log("2");
            e_State = State.Attack;
            anim.SetTrigger("Attack");
            Attack();
        }
    }

    private void Move()
    {
        // Turn 전환 조건
        float delayToTurn = 3.0f;
        delayTime += Time.deltaTime;

        if (delayTime > delayToTurn)
        {
            delayTime = 0;
            e_State = State.Turn;
            anim.SetTrigger("WalkToIdle");
        }

        if (transform.localScale.x > 0)
        {
            rb.velocity = new Vector2(speed, rb.velocity.y);
        }
        else
        {
            rb.velocity = new Vector2(-speed, rb.velocity.y);
        }

        // Attack 전환 조건
        var dis = Vector2.Distance(transform.position, player.position);

        if (dis < playerDistance)
        {
            Debug.Log("1");
            e_State = State.Attack;
            anim.SetTrigger("Attack");
            Attack();
        }
    }

    // flip
    private void Turn()
    {
        Vector3 localScale = transform.localScale;
        localScale.x *= -1;
        transform.localScale = localScale;

        e_State = State.Idle;
    }

    private void Attack()
    {
        Debug.Log("3");
        rb.velocity = new Vector2(0, rb.velocity.y);

        float pPos = player.position.x;
        float ePos = transform.position.x;

        // 적의 오른쪽에 플레이어가 있을 때
        if (pPos - ePos > 0)
        {
            // 오른쪽을 보고 있다면
            if (transform.localScale == new Vector3(-1, 1, 1))
            {
                Debug.Log("right");
                Turn();
            }
            rb.velocity = new Vector2(pPos, rb.velocity.y);
        }
        // 적의 왼쪽에 플레이어가 있을 때
        else
        {
            // 오른쪽을 보고 있다면
            if (transform.localScale == new Vector3(1, 1, 1))
            {
                Debug.Log("left");
                Turn();
            }

            rb.velocity = new Vector2(pPos, rb.velocity.y);

            // Turn 전환 조건
            float delayToTurn = 1.0f;
            delayTime += Time.deltaTime;

            if (delayTime > delayToTurn)
            {
                delayTime = 0;
                e_State = State.Idle;
                anim.SetTrigger("AttackToIdle");
                rb.velocity = new Vector2(0, rb.velocity.y);
            }

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
