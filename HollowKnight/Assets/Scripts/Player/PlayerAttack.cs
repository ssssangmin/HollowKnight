using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class PlayerAttack : MonoBehaviour
{
    [SerializeField] private Transform attackTransform;     // ���� ������ ����� ��ġ
    [SerializeField] private float attackRange = 1.0f;      // ���� ������ ũ��
    [SerializeField] private LayerMask attackableLayer;     // ������ ���ϴ� layer
    [SerializeField] private float damageAmount = 1.0f;     // ������ ��ġ
    [SerializeField] private float attackDelay = 0.15f;     // ���� ������

    // �������� ���� ������
    public bool ShouldBeDamaging { get; private set; } = false;

    private RaycastHit2D[] hits;                            // �ǰ� ����

    private Animator anim;    

    private float attackTimer;                              // ���� ������ Ÿ�̸�

    private float verticalInput;

    private Animator slashAnim;

    private void Start()
    {
        anim = GetComponent<Animator>();

        slashAnim = GameObject.FindGameObjectWithTag("Slash").GetComponent<Animator>();

        // �ٷ� ������ �����ϵ��� ����
        attackTimer = attackDelay;
    }

    private void Update()
    {
        // ����Ű ���� �Է°� �޾ƿ���
        verticalInput = UserInput.instance.moveInput.y;

        // ���� Ű�� �Է¹ް�, ���� ������ �ð��� �ƴ϶��
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

        // �� ����Ű�� ���� ä�� ���� Ű�� �Է��ϸ�
        if (verticalInput > 0)
        {
            if (UserInput.instance.controls.Attack.Attack.WasPressedThisFrame() && attackTimer >= attackDelay)
            {
                attackTimer = 0.0f;

                anim.SetTrigger("UpAttack");

                slashAnim.SetTrigger("UpSlash");
            }
        }

        // �Ʒ� ����Ű�� ���� ä�� ���� Ű�� �Է��ϸ�
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
        // raycast hit - ���׸���
        hits = Physics2D.CircleCastAll(attackTransform.position, attackRange, transform.right, 0f, attackableLayer);

        for (int i = 0; i < hits.Length; i++)
        {
            IDamageable idmg = hits[i].collider.gameObject.GetComponent<IDamageable>();

            // ���� IDamageable�� �ִٸ�
            if (idmg != null)
            {
                // ������
                idmg.Damage(damageAmount);
            }
        }
    }
    */

    // ���� �ִϸ��̼� ���� �� �������� ���� �� �ִ� Event �Լ�
    public IEnumerator DamageWhileSlashIsActive()
    {
        ShouldBeDamaging = true;

        while (ShouldBeDamaging)
        {
            hits = Physics2D.CircleCastAll(attackTransform.position, attackRange, transform.right, 0f, attackableLayer);

            for (int i = 0; i < hits.Length; i++)
            {
                IDamageable idmg = hits[i].collider.gameObject.GetComponent<IDamageable>();

                // ���� IDamageable�� �ִٸ�
                if (idmg != null)
                {
                    // ������
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
