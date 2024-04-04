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
        MoveToAttack,
        Attack,
        Damaged,
        Die
    }

    private State e_State;

    [SerializeField] private float maxHealth = 3.0f;
    [SerializeField] private float speed = 0.2f;

    [SerializeField] private float currentHealth;

    private Animator anim;
    private Rigidbody2D rb;

    private Transform player;

    [SerializeField] private float playerDistance = 5.0f;

    [HideInInspector] public bool isInRange;

    private Vector2 movementDirection = Vector2.left;

    private Vector2 startAttackPos;
    private Vector2 endAttackPos;

    private Transform movePoint;

    private void Start()
    {
        e_State = State.Idle;

        currentHealth = maxHealth;

        player = GameObject.FindGameObjectWithTag("Player").transform;

        movePoint = GameObject.FindGameObjectWithTag("MovePoint").transform;

        anim = GetComponent<Animator>();
        rb = GetComponent<Rigidbody2D>();
        InvokeRepeating(nameof(ChangeState), 0f, 2f); // 2�ʸ��� ���� ��ȯ
    }

    private void ChangeState()
    {
        if (e_State == State.Idle)
        {
            e_State = State.Move;
            anim.SetTrigger("Walk");
        }
        else if (e_State == State.Move)
        {
            e_State = State.Idle;
            anim.SetTrigger("Idle");
        }
    }

    private void Update()
    {
        if (e_State == State.Idle || e_State == State.Move)
        {
            float distanceToPlayer = Vector2.Distance(transform.position, new Vector2(player.position.x, 0));
            if (distanceToPlayer <= playerDistance)
            {
                CancelInvoke(nameof(ChangeState));
                e_State = State.MoveToAttack;
            }
        }

        switch (e_State)
        {
            case State.Idle:
                Idle();
                break;
            case State.Move:
                Move();
                break;
            case State.MoveToAttack:
                MoveToAttack();
                break;
            case State.Attack:
                Attack();
                break;
            case State.Damaged:
                break;
            case State.Die:
                break;
            default:
                break;
        }
    }

    private void Idle()
    {
        rb.velocity = Vector2.zero;
    }

    private void Move()
    {
        Vector2 direction = movementDirection.normalized;
        rb.velocity = direction * speed;
        if (movementDirection.x < 0)
        {
            transform.localScale = new Vector3(1, 1, 1);
        }
        else
        {
            transform.localScale = new Vector3(-1, 1, 1);
        }
    }

    private void MoveToAttack()
    {
        rb.velocity = Vector2.zero;
        startAttackPos = new Vector2(transform.position.x, 0);
        endAttackPos = new Vector2(player.position.x, 0);
        float pPos = player.position.x;
        float ePos = transform.position.x;

        // ���� �����ʿ� �÷��̾ ���� ��
        if (pPos - ePos < 0)
        {
            // �������� ���� �ִٸ�
            if (transform.localScale == new Vector3(-1, 1, 1))
            {
                Debug.Log("right");
                FlipSprite();
            }
        }
        // ���� ���ʿ� �÷��̾ ���� ��
        else
        {
            // �������� ���� �ִٸ�
            if (transform.localScale == new Vector3(1, 1, 1))
            {
                Debug.Log("left");
                FlipSprite();
            }
        }
        anim.SetTrigger("Attack");
        e_State = State.Attack;
    }

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag("MovePoint"))
        {
            // ���� ��ȯ
            movementDirection *= -1;
        }
    }

    void FlipSprite()
    {
        Vector3 scale = transform.localScale;

        scale.x *= -1;

        transform.localScale = scale;
    }

    private void Attack()
    {
        Vector2 directionToPlayer = (endAttackPos - startAttackPos).normalized;
        rb.velocity = directionToPlayer * speed * 3f;
        if (Vector2.Distance(new Vector2(transform.position.x, 0), endAttackPos) < 0.05)
        {
            rb.velocity = Vector2.zero;
            anim.SetTrigger("Idle");
            e_State = State.Idle;
            movePoint.position = transform.position;
            InvokeRepeating(nameof(ChangeState), 0f, 2f);
        }
    }

    public void Damage(float damageAmount)
    {
        currentHealth -= damageAmount;
        // ��� ����
        Invoke(nameof(Stiffness), 0.5f);
        
        if (currentHealth <= 0)
        {
            Die();
        }
    }

    public void Stiffness()
    {
        rb.velocity = Vector2.zero;
        anim.SetTrigger("Attack");
        e_State = State.Attack;
    }

    private void Die()
    {
        anim.SetTrigger("Death");
    }
}
