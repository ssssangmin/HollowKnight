using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GroundSavePoint : MonoBehaviour
{
    [SerializeField] private LayerMask savePoint;

    public Vector2 SafeGroundLocation { get; private set; } = Vector2.zero;

    private Collider2D coll;
    private float charOffset;

    private void Start()
    {
        // SafeGroundLocation�� �ʱ� ��ġ ����
        SafeGroundLocation = transform.position;

        coll = GetComponent<Collider2D>();

        charOffset = (coll.bounds.size.y / 2);
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        // ���� �浹 ������Ʈ�� savepoint���̾� ����ũ�� �ִٸ�
        if ((savePoint.value & (1 << collision.gameObject.layer)) > 0)
        {
            // SafeGroundLocation�� ��ǥ�� ����
            SafeGroundLocation = new Vector2(collision.bounds.center.x, collision.bounds.min.y + charOffset);
        }
    }

    public void WarpPlayerToSafeGround()
    {
        transform.position = SafeGroundLocation;
    }
}
