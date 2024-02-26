using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SafeGroundSaver : MonoBehaviour
{
    [SerializeField] private float saveFrequency = 3.0f;

    public Vector2 safeGroundLocation { get; private set; } = new Vector2(0.0f, 0.0f);

    private Coroutine safeGroundCoroutine;

    private GroundCheck groundCheck;

    private Animator anim;

    private void Start()
    {
        safeGroundCoroutine = StartCoroutine(SaveGroundLocation());

        // 안전 지대 초기화
        safeGroundLocation = transform.position;

        groundCheck = GetComponent<GroundCheck>();

        anim = GetComponent<Animator>();
    }

    private IEnumerator SaveGroundLocation()
    {
        // 타이머 업데이트
        float elapsedTime = 0.0f;
        while (elapsedTime < saveFrequency)
        {
            elapsedTime += Time.deltaTime;
            yield return null;
        }

        // 플레이어가 땅에 닿으면 위치 새로 지정
        if (groundCheck.isGrounded())
        {
            safeGroundLocation = transform.position;
        }

        // 코루틴 재시작
        safeGroundCoroutine = StartCoroutine(SaveGroundLocation());
    }

    public void WarpPlayerToSafeGround()
    {
        anim.Play("Idle");
        transform.position = safeGroundLocation;
    }
}
