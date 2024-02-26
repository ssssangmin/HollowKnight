using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GroundCheck : MonoBehaviour
{
    [SerializeField] private float extraHeight = 0.25f;
    [SerializeField] private LayerMask groundLayer;

    private RaycastHit2D groundHit;

    private Collider2D col;

    private void Start()
    {
        col = GetComponent<Collider2D>();
    }

    public bool isGrounded()
    {
        groundHit = Physics2D.BoxCast(col.bounds.center, col.bounds.size, 0f, Vector2.down, extraHeight, groundLayer);

        if (groundHit.collider != null)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}
