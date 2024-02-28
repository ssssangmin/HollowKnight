using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Scripting.APIUpdating;

public class PlayerController : MonoBehaviour
{
    public static PlayerController instance;

    [SerializeField] private float speed = 3.0f;  // 이동속도

    [SerializeField] private float jumpTime = 0.5f;
    [SerializeField] private float jump = 12.0f;       // 점프력

    [SerializeField] private float extraHeight = 0.25f;
    [SerializeField] private LayerMask groundLayer;   // 착지 가능한 레이어

    private float moveInput;

    private Rigidbody2D rbody;          // RigidBody 2D 컴포넌트
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
            // UserInput 클래스 인스턴스에서 좌우 이동 값 받아오기.
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
            // 점프를 입력했을 때
            if (UserInput.instance.controls.Jumping.Jump.WasPressedThisFrame() && isGrounded())
            {
                anim.SetTrigger("Jump");
                isJumping = true;
                jumpTimeCounter = jumpTime;
                rbody.velocity = new Vector2(rbody.velocity.x, jump);
            }
            // 유지중 // 점프를 누르고 있는동안에 추락모션이 계속 유지되므로 여기서 코드 수정필요.
            else if (UserInput.instance.controls.Jumping.Jump.IsPressed())
            {
                // 점프를 누르고 있는 시간 계산
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
                // 버튼을 누르고 있을 수 있는 최대 시간이 지나면
                else
                {
                    // 추락 애니메이션 재생
                    anim.SetTrigger("JumpToFallIdle");
                    isJumping = false;
                }
            }
            // 점프 버튼에서 손 떼었을 때
            if (UserInput.instance.controls.Jumping.Jump.WasReleasedThisFrame())
            {
                anim.SetTrigger("JumpToFallIdle");
                isJumping = false;
                isFalling = true;
            }
            // 점프 공격 후 falltoland 트리거가 자꾸 켜짐. 수정필요.
            if (!isJumping && CheckForLand())
            {
                anim.SetTrigger("FallToLand");
                resetTriggerCoroutine = StartCoroutine(Reset());
            }
        }
    }

    // 땅 체크
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
                // 땅에 착륙
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