using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
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
    [SerializeField] private float attackCooldown = 1.5f;

    private float currentHealth;

    private Animator anim;
    private Rigidbody2D rb;

    private float delayTime;

    private Transform player;

    [SerializeField] private float playerDistance = 5.0f;

    [HideInInspector] public bool isInRange;

    private Vector2 movementDirection = Vector2.left;

    private float attackTimer = 0f;

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
        // 플레이어와의 거리 계산
        float distanceToPlayer = Vector2.Distance(transform.position, player.position);

        // 공격 쿨타임 타이머
        attackTimer -= Time.deltaTime;

        // 플레이어와의 거리에 따른 상태 전환
        if (distanceToPlayer <= playerDistance && e_State != State.Die)
        {
            e_State = State.Attack;
            anim.SetTrigger("Attack");
        }
        else if (e_State != State.Die)
        {
            e_State = State.Idle;
        }

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
                if (attackTimer <= 0f)
                {
                    Attack();
                    attackTimer = attackCooldown;
                }
                break;
            case State.Damaged:
                break;
            case State.Die:
                break;
            default:
                break;
        }

        if (e_State == State.Attack)
        {
            RotateTowardsPlayer();
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
    }

    private void Move()
    {
        rb.velocity = movementDirection * speed;

        // Turn 전환 조건
        float delayToTurn = 3.0f;
        delayTime += Time.deltaTime;

        if (delayTime > delayToTurn)
        {
            delayTime = 0;
            e_State = State.Turn;
            anim.SetTrigger("WalkToIdle");
        }

        if (movementDirection == Vector2.left)
        {
            transform.localScale = new Vector3(-1, 1, 1);
        }
        else
        {
            transform.localScale = new Vector3(1, 1, 1);
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
        float pPos = player.position.x;
        float ePos = transform.position.x;

        //// 적의 오른쪽에 플레이어가 있을 때
        //if (pPos - ePos > 0)
        //{
        //    // 오른쪽을 보고 있다면
        //    if (transform.localScale == new Vector3(-1, 1, 1))
        //    {
        //        Debug.Log("right");
        //        Turn();
        //    }
        //    rb.velocity = new Vector2(pPos, rb.velocity.y);
        //}
        //// 적의 왼쪽에 플레이어가 있을 때
        //else
        //{
        //    // 오른쪽을 보고 있다면
        //    if (transform.localScale == new Vector3(1, 1, 1))
        //    {
        //        Debug.Log("left");
        //        Turn();
        //    }

        //    rb.velocity = new Vector2(pPos, rb.velocity.y);

        //    // Turn 전환 조건
        //    float delayToTurn = 1.0f;
        //    delayTime += Time.deltaTime;

        //    if (delayTime > delayToTurn)
        //    {
        //        delayTime = 0;
        //        e_State = State.Idle;
        //        anim.SetTrigger("AttackToIdle");
        //        rb.velocity = new Vector2(0, rb.velocity.y);
        //    }

        //}

        Vector2 directionToPlayer = (player.position - transform.position).normalized;
        rb.velocity = directionToPlayer * speed * 3f;
    }

    public void RotateTowardsPlayer()
    {
        Vector3 direction = player.position - transform.position;
        float angle = Mathf.Atan2(direction.y, direction.x) * Mathf.Rad2Deg;
        transform.rotation = Quaternion.AngleAxis(angle, Vector3.back);
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
