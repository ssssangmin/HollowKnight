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

            // 플레이어에게 1의 데미지를 준다
            HP.Damage(1f);

            // 플레이어를 안전지대로 이동시킴
            groundsaver.WarpPlayerToSafeGround();
        }
    }
}
