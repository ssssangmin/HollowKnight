using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class PlayerAttack : MonoBehaviour
{
    [SerializeField] private Transform attackTransform;     // 공격 판정이 적용될 위치
    [SerializeField] private float attackRange = 1.0f;      // 공격 판정의 크기
    [SerializeField] private LayerMask attackableLayer;     // 공격이 통하는 layer
    [SerializeField] private float damageAmount = 1.0f;     // 데미지 수치
    [SerializeField] private float attackDelay = 0.15f;     // 공격 딜레이

    // 데미지가 들어가는 프레임
    public bool ShouldBeDamaging { get; private set; } = false;

    private RaycastHit2D[] hits;                            // 피격 레이

    private Animator anim;    

    private float attackTimer;                              // 공격 딜레이 타이머

    private float verticalInput;

    private Animator slashAnim;

    private void Start()
    {
        anim = GetComponent<Animator>();

        slashAnim = GameObject.FindGameObjectWithTag("Slash").GetComponent<Animator>();

        // 바로 공격이 가능하도록 설정
        attackTimer = attackDelay;
    }

    private void Update()
    {
        // 방향키 수직 입력값 받아오기
        verticalInput = UserInput.instance.moveInput.y;

        // 공격 키를 입력받고, 공격 딜레이 시간이 아니라면
        if (verticalInput == 0 && UserInput.instance.controls.Attack.Attack.WasPressedThisFrame() && attackTimer >= attackDelay)
        {
            attackTimer = 0.0f;

            //Attack();

            int rand = Random.Range(0, 2);
            if (rand == 0)
            {
                anim.SetTrigger("Attack");

                slashAnim.SetTrigger("Attack");
            }
            else
            {
                anim.SetTrigger("Attack2");

                slashAnim.SetTrigger("Attack2");
            }

        }

        // 윗 방향키를 누른 채로 공격 키를 입력하면
        if (verticalInput > 0)
        {
            if (UserInput.instance.controls.Attack.Attack.WasPressedThisFrame() && attackTimer >= attackDelay)
            {
                attackTimer = 0.0f;

                anim.SetTrigger("UpAttack");

                slashAnim.SetTrigger("UpSlash");
            }
        }

        // 아래 방향키를 누른 채로 공격 키를 입력하면
        if (verticalInput < 0)
        {
            if (UserInput.instance.controls.Attack.Attack.WasPressedThisFrame() && attackTimer >= attackDelay)
            {
                attackTimer = 0.0f;

                anim.SetTrigger("DownAttack");

                slashAnim.SetTrigger("DownSlash");
            }
        }

        attackTimer += Time.deltaTime;
    }

    /*
    private void Attack()
    {
        // raycast hit - 원그리기
        hits = Physics2D.CircleCastAll(attackTransform.position, attackRange, transform.right, 0f, attackableLayer);

        for (int i = 0; i < hits.Length; i++)
        {
            IDamageable idmg = hits[i].collider.gameObject.GetComponent<IDamageable>();

            // 만약 IDamageable이 있다면
            if (idmg != null)
            {
                // 데미지
                idmg.Damage(damageAmount);
            }
        }
    }
    */

    // 공격 애니메이션 중일 때 데미지를 입힐 수 있는 Event 함수
    public IEnumerator DamageWhileSlashIsActive()
    {
        ShouldBeDamaging = true;

        while (ShouldBeDamaging)
        {
            hits = Physics2D.CircleCastAll(attackTransform.position, attackRange, transform.right, 0f, attackableLayer);

            for (int i = 0; i < hits.Length; i++)
            {
                IDamageable idmg = hits[i].collider.gameObject.GetComponent<IDamageable>();

                // 만약 IDamageable이 있다면
                if (idmg != null)
                {
                    // 데미지
                    idmg.Damage(damageAmount);
                    ShouldBeDamaging = false;
                }
            }
            
            yield return null;
        }
    }

    private void OnDrawGizmosSelected()
    {
        Gizmos.DrawWireSphere(attackTransform.position, attackRange);
    }

    public void ShouldBeDamagingToTrue()
    {
        ShouldBeDamaging = true;
    }

    public void ShouldBeDamagingToFalse()
    {
        ShouldBeDamaging = false;
    }
}
