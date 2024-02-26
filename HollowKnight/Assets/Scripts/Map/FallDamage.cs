using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FallDamage : MonoBehaviour
{
    private PlayerHealth HP;
    private SafeGroundSaver groundsaver;

    private void Start()
    {
        groundsaver = GameObject.FindGameObjectWithTag("Player").GetComponent<SafeGroundSaver>();
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.CompareTag("Player"))
        {
            HP = collision.gameObject.GetComponent<PlayerHealth>();

            // �÷��̾�� 1�� �������� �ش�
            HP.Damage(1f);

            // �÷��̾ ��������� �̵���Ŵ
            groundsaver.WarpPlayerToSafeGround();
        }
    }
}
