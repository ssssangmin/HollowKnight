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

        // ���� ���� �ʱ�ȭ
        safeGroundLocation = transform.position;

        groundCheck = GetComponent<GroundCheck>();

        anim = GetComponent<Animator>();
    }

    private IEnumerator SaveGroundLocation()
    {
        // Ÿ�̸� ������Ʈ
        float elapsedTime = 0.0f;
        while (elapsedTime < saveFrequency)
        {
            elapsedTime += Time.deltaTime;
            yield return null;
        }

        // �÷��̾ ���� ������ ��ġ ���� ����
        if (groundCheck.isGrounded())
        {
            safeGroundLocation = transform.position;
        }

        // �ڷ�ƾ �����
        safeGroundCoroutine = StartCoroutine(SaveGroundLocation());
    }

    public void WarpPlayerToSafeGround()
    {
        anim.Play("Idle");
        transform.position = safeGroundLocation;
    }
}
