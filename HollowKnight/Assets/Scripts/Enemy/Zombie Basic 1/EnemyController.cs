using UnityEngine;

public class EnemyController : MonoBehaviour, IDamageable
{
    public float maxHealth = 3;
    private float currentHealth;
    public float moveSpeed = 2f;
    public float attackSpeedMultiplier = 1.5f;
    public float attackRange = 5f;
    public float attackDistance = 3f;
    private Animator animator;

    private Transform player;
    private Rigidbody2D rb;
    private Vector2 movementDirection = Vector2.left; // 방향
    private bool isAttacking = false;

    enum EnemyState
    {
        Idle,
        Move,
        Attack,
        Die
    }

    private EnemyState currentState;

    void Start()
    {
        currentHealth = maxHealth;
        player = GameObject.FindGameObjectWithTag("Player").transform;
        rb = GetComponent<Rigidbody2D>();
        animator = GetComponent<Animator>();

        currentState = EnemyState.Idle;
        InvokeRepeating(nameof(ChangeState), 0f, 2f); // 2초마다 상태 전환
    }

    void ChangeState()
    {
        if (currentState == EnemyState.Idle)
        {
            currentState = EnemyState.Move;
            animator.SetTrigger("Walk");
        }
        else if (currentState == EnemyState.Move)
        {
            currentState = EnemyState.Idle;
            animator.SetTrigger("Idle");
        }
    }

    void Update()
    {
        if (currentState != EnemyState.Die)
        {
            if (currentState == EnemyState.Attack || isAttacking)
            {
                if (!isAttacking)
                {
                    isAttacking = true;
                    animator.SetTrigger("Attack");
                    Attack();
                }
            }
            else if (currentState == EnemyState.Move)
            {
                Move();
            }
            else
            {
                rb.velocity = Vector2.zero;
            }

            if (currentState != EnemyState.Attack)
            {
                RotateTowardsPlayer();

                // 플레이어와의 거리
                float distanceToPlayer = Vector2.Distance(transform.position, player.position);
                if (distanceToPlayer <= 5.0f)
                {
                    // 플레이어로 돌진
                    ChargeTowardsPlayer();
                }
            }
        }
    }

    void RotateTowardsPlayer()
    {
        float distanceToPlayer = Vector2.Distance(transform.position, player.position);

        if (distanceToPlayer <= attackRange)
        {
            Vector2 directionToPlayer = (player.position - transform.position).normalized;

            if (directionToPlayer.x > 0)
            {
                transform.localScale = new Vector3(-1, 1, 1);
            }
            else if (directionToPlayer.x < 0)
            {
                transform.localScale = new Vector3(1, 1, 1);
            }
        }
    }

    void ChargeTowardsPlayer()
    {
        animator.SetTrigger("Attack");
        Vector2 directionToPlayer = (player.position - transform.position).normalized;
        rb.velocity = directionToPlayer * moveSpeed * 1.5f;
    }

    void Move()
    {
        Vector2 direction = movementDirection.normalized;
        rb.velocity = direction * moveSpeed;
    }

    void Attack()
    {
        Vector2 directionToPlayer = (player.position - transform.position).normalized;
        rb.velocity = directionToPlayer * moveSpeed * attackSpeedMultiplier;

        float distanceToPlayer = Vector2.Distance(transform.position, player.position);
        if (distanceToPlayer <= attackDistance)
        {
            rb.velocity = Vector2.zero;
            isAttacking = false;
        }
    }

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag("MovePoint"))
        {
            // 방향 전환
            movementDirection *= -1; 
            
            FlipSprite();
        }
    }

    void FlipSprite()
    {
        Vector3 scale = transform.localScale;

        scale.x *= -1;

        transform.localScale = scale;
    }

    public void Damage(float damageAmount)
    {
        currentHealth -= damageAmount;

        animator.SetTrigger("Attack");

        if (currentHealth <= 0)
        {
            Die();
        }
    }

    public void Die()
    {
        currentState = EnemyState.Die;
    }
}