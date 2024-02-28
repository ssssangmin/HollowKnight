using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Scripting.APIUpdating;

public class PlayerController : MonoBehaviour
{
    public static PlayerController instance;

    [SerializeField] private float speed = 3.0f;  // �̵��ӵ�

    [SerializeField] private float jumpTime = 0.5f;
    [SerializeField] private float jump = 12.0f;       // ������

    [SerializeField] private float extraHeight = 0.25f;
    [SerializeField] private LayerMask groundLayer;   // ���� ������ ���̾�

    private float moveInput;

    private Rigidbody2D rbody;          // RigidBody 2D ������Ʈ
    private Collider2D coll;

    private Animator anim;

    private RaycastHit2D rayhit;

    private bool isJumping;
    private bool isFalling;
    private float jumpTimeCounter;
    private bool backIdle = false;
    public bool canMove;

    private Coroutine resetTriggerCoroutine;

    private void Start()
    {
        rbody = GetComponent<Rigidbody2D>();
        anim = GetComponent<Animator>();
        coll = GetComponent<Collider2D>();

        groundLayer = LayerMask.GetMask("Ground");

        instance = this;
        canMove = true;
    }

    private void Update()
    {
        Move();
        Jump();
    }

    private void Move()
    {
        if (canMove)
        {
            // UserInput Ŭ���� �ν��Ͻ����� �¿� �̵� �� �޾ƿ���.
            moveInput = UserInput.instance.moveInput.x;

            if (moveInput > 0)
            {
                Vector3 rotate = new Vector3(transform.rotation.x, 0f, transform.rotation.z);
                transform.rotation = Quaternion.Euler(rotate);
                anim.SetBool("HorizontalKeyDown", true);
                anim.SetBool("HorizontalKeyUp", false);
            }
            else if (moveInput < 0)
            {
                Vector3 rotate = new Vector3(transform.rotation.x, 180f, transform.rotation.z);
                transform.rotation = Quaternion.Euler(rotate);
                anim.SetBool("HorizontalKeyDown", true);
                anim.SetBool("HorizontalKeyUp", false);
            }

            if (Input.GetButtonUp("Horizontal") && moveInput == 0.0f)
            {
                anim.SetBool("HorizontalKeyDown", false);
                RunToIdle();
            }
            rbody.velocity = new Vector2(moveInput * speed, rbody.velocity.y);
        }
        anim.ResetTrigger("FallToLand");
    }

    private void FixedUpdate()
    {
        if (backIdle)
        {
            anim.SetBool("HorizontalKeyUp", true);
            backIdle = false;
        }
    }

    public void RunToIdle()
    {
        backIdle = true;
    }

    private void Jump()
    {
        if (canMove)
        {
            // ������ �Է����� ��
            if (UserInput.instance.controls.Jumping.Jump.WasPressedThisFrame() && isGrounded())
            {
                anim.SetTrigger("Jump");
                isJumping = true;
                jumpTimeCounter = jumpTime;
                rbody.velocity = new Vector2(rbody.velocity.x, jump);
            }
            // ������ // ������ ������ �ִµ��ȿ� �߶������ ��� �����ǹǷ� ���⼭ �ڵ� �����ʿ�.
            else if (UserInput.instance.controls.Jumping.Jump.IsPressed())
            {
                // ������ ������ �ִ� �ð� ���
                if (jumpTimeCounter > 0 && isJumping)
                {
                    rbody.velocity = new Vector2(rbody.velocity.x, jump);
                    jumpTimeCounter -= Time.deltaTime;
                }
                else if (jumpTimeCounter == 0)
                {
                    isFalling = true;
                    isJumping = false;
                }
                // ��ư�� ������ ���� �� �ִ� �ִ� �ð��� ������
                else
                {
                    // �߶� �ִϸ��̼� ���
                    anim.SetTrigger("JumpToFallIdle");
                    isJumping = false;
                }
            }
            // ���� ��ư���� �� ������ ��
            if (UserInput.instance.controls.Jumping.Jump.WasReleasedThisFrame())
            {
                anim.SetTrigger("JumpToFallIdle");
                isJumping = false;
                isFalling = true;
            }
            // ���� ���� �� falltoland Ʈ���Ű� �ڲ� ����. �����ʿ�.
            if (!isJumping && CheckForLand())
            {
                anim.SetTrigger("FallToLand");
                resetTriggerCoroutine = StartCoroutine(Reset());
            }
        }
    }

    // �� üũ
    private bool isGrounded()
    {
        rayhit = Physics2D.BoxCast(coll.bounds.center, coll.bounds.size, 0f, Vector2.down, extraHeight, groundLayer);

        if (rayhit.collider != null)
        {
            return true;
        }

        else
        {
            return false;
        }
    }

    private bool CheckForLand()
    {
        if (isFalling)
        {
            if (isGrounded())
            {
                // ���� ����
                isFalling = false;

                return true;
            }

            else
            {
                return false;
            }
        }
        else
        {
            return false;
        }
    }

    private IEnumerator Reset()
    {
        yield return null;
        anim.ResetTrigger("JumpToFallIdle");
    }
}