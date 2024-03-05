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
    };

    private State e_State;

    [SerializeField] private float maxHealth = 3.0f;

    private float currentHealth;

    private Animator anim;
    private Rigidbody2D rb;

    [SerializeField] private float speed = 2;
    [SerializeField] private float range = 0.5f;
    [SerializeField] private float maxDistance = 0;

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
                return;
            case State.Move:
                Move();
                return;
            case State.Attack:
                Attack();
                return;
            case State.Damaged:
                return;
            case State.Die:
                return;
        }
    }

    private void Idle()
    {
        // Idle상태와 Move상태를 1초마다 랜덤으로 전환



        // Attack 전환 조건
        player = GameObject.FindGameObjectWithTag("Player").transform;

        var dis = Vector2.Distance(transform.position, player.position);

        if (dis < playerDistance)
        {
            e_State = State.Attack;
            anim.SetTrigger("Attack");
        }
    }

    private void Move()
    {
        // Idle 전환 조건

        // Attack 전환 조건
        player = GameObject.FindGameObjectWithTag("Player").transform;

        var dis = Vector2.Distance(transform.position, player.position);

        if (dis < playerDistance)
        {
            e_State = State.Attack;
            anim.SetTrigger("Attack");
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
