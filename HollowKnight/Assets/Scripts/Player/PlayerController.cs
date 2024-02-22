using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Scripting.APIUpdating;

#region 1
public class PlayerController : MonoBehaviour
{
    [SerializeField] private float speed = 3.0f;  // 이동속도

    [SerializeField] private float jumpTime = 0.5f;
    [SerializeField] private float jump = 12.0f;       // 점프력

    [SerializeField] private float extraHeight = 0.25f;
    [SerializeField] private LayerMask groundLayer;   // 착지 가능한 레이어

    private float moveInput;

    private Rigidbody2D rbody;          // RigidBody 2D 컴포넌트
    private Collider2D coll;

    private Animator animator;

    private RaycastHit2D rayhit;

    private bool isJumping;
    private bool isFalling;
    private float jumpTimeCounter;
    private bool backIdle = false;

    private Coroutine resetTriggerCoroutine;

    private void Start()
    {
        rbody = GetComponent<Rigidbody2D>();
        animator = GetComponent<Animator>();
        coll = GetComponent<Collider2D>();

        groundLayer = LayerMask.GetMask("Ground");
    }

    private void Update()
    {
        Move();
        Jump();
    }

    private void Move()
    {
        // UserInput 클래스 인스턴스에서 좌우 이동 값 받아오기.
        moveInput = UserInput.instance.moveInput.x;

        if (moveInput > 0)
        {
            Vector3 rotate = new Vector3(transform.rotation.x, 0f, transform.rotation.z);
            transform.rotation = Quaternion.Euler(rotate);
            animator.SetBool("HorizontalKeyDown", true);
            animator.SetBool("HorizontalKeyUp", false);
        }
        else if (moveInput < 0)
        {
            Vector3 rotate = new Vector3(transform.rotation.x, 180f, transform.rotation.z);
            transform.rotation = Quaternion.Euler(rotate);
            animator.SetBool("HorizontalKeyDown", true);
            animator.SetBool("HorizontalKeyUp", false);
        }

        if (Input.GetButtonUp("Horizontal") && moveInput == 0.0f)
        {
            animator.SetBool("HorizontalKeyDown", false);
            RunToIdle();
        }
        rbody.velocity = new Vector2(moveInput * speed, rbody.velocity.y);
    }

    private void FixedUpdate()
    {
        if (backIdle)
        {
            animator.SetBool("HorizontalKeyUp", true);
            backIdle = false;
        }
    }

    public void RunToIdle()
    {
        backIdle = true;
    }

    private void Jump()
    {
        // 점프를 입력했을 때
        if (UserInput.instance.controls.Jumping.Jump.WasPressedThisFrame() && isGrounded())
        {
            animator.SetTrigger("Jump");
            isJumping = true;
            jumpTimeCounter = jumpTime;
            rbody.velocity = new Vector2(rbody.velocity.x, jump);
        }
        // 유지중
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
                animator.SetTrigger("JumpToFallIdle");
                isJumping = false;
            }
        }
        // 점프 버튼에서 손 떼었을 때
        if (UserInput.instance.controls.Jumping.Jump.WasReleasedThisFrame())
        {
            animator.SetTrigger("JumpToFallIdle");
            isJumping = false;
            isFalling = true;
        }
        if (!isJumping && CheckForLand())
        {
            animator.SetTrigger("FallToLand");
            resetTriggerCoroutine = StartCoroutine(Reset());
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
        animator.ResetTrigger("JumpToFallIdle");
    }
}
#endregion

#region
//public class PlayerController : MonoBehaviour
//{
//    Rigidbody2D rbody;          // RigidBody 2D 컴포넌트
//    float axisH = 0.0f;         // 좌우 방향키 입력
//    public float speed = 3.0f;  // 이동속도

//    public enum PlayerState
//    {
//        Idle,
//        RunIdle,
//        Run,
//        RunToIdle,
//        Jump,
//        Attack
//    }

//    public PlayerState gState;

//    public float buttonTime = 0.3f;
//    public float jump = 20.0f;       // 점프력
//    float jumpTime;

//    Animator animator;

//    private void Start()
//    {
//        animator = GetComponent<Animator>();
//        gState = PlayerState.Idle;
//        rbody = this.GetComponent<Rigidbody2D>();
//    }

//    private void Update()
//    {
//        axisH = Input.GetAxisRaw("Horizontal");
//        // 캐릭터 방향 조절
//        if (axisH > 0.0f)
//        {
//            // 오른쪽 이동
//            Debug.Log("오른쪽 이동");
//            transform.localScale = new Vector2(1, 1);
//        }
//        else if (axisH < 0.0f)
//        {
//            Debug.Log("왼쪽 이동");
//            transform.localScale = new Vector2(-1, 1); // 좌우 반전
//        }

//        switch (gState)
//        {
//            case PlayerState.Idle:
//                if (Input.GetKeyDown(KeyCode.RightArrow) || Input.GetKeyDown(KeyCode.LeftArrow))
//                {
//                    gState = PlayerState.RunIdle;
//                    Debug.Log("Idle -> Run");
//                    animator.SetTrigger("IdleToRun");
//                }
//                break;
//            case PlayerState.RunIdle:
//                if (Input.GetKeyUp(KeyCode.RightArrow) || Input.GetKeyUp(KeyCode.LeftArrow))
//                {
//                    gState = PlayerState.RunToIdle;
//                    Debug.Log("RunIdle -> RunToIdle");
//                    animator.SetTrigger("RunIdleToRunToIdle");
//                }
//                else
//                {
//                    gState = PlayerState.Run;
//                    animator.SetTrigger("RunIdleToRun");
//                }
//                break;
//            case PlayerState.Run:
//                if (Input.GetKeyUp(KeyCode.RightArrow) || Input.GetKeyUp(KeyCode.LeftArrow))
//                {
//                    gState = PlayerState.RunToIdle;
//                    Debug.Log("Run -> RunToIdle");
//                    animator.SetTrigger("RunToRunToIdle");
//                }
//                break;
//            case PlayerState.RunToIdle:
//                if (Input.GetKeyDown(KeyCode.RightArrow) || Input.GetKeyDown(KeyCode.LeftArrow))
//                {
//                    gState = PlayerState.RunIdle;
//                    Debug.Log("Idle -> Run");
//                    animator.SetTrigger("RunToIdleToRunIdle");
//                }
//                else
//                {
//                    gState = PlayerState.Idle;
//                    animator.SetTrigger("RunToIdleToIdle");
//                }
//                break;
//            case PlayerState.Jump:
//                Jump();
//                break;
//            case PlayerState.Attack:
//                Attack();
//                break;
//        }
//    }

//    private void FixedUpdate()
//    {

//    }

//    public void Idle()
//    {
//        if (Input.GetKeyDown(KeyCode.RightArrow) || Input.GetKeyDown(KeyCode.LeftArrow))
//        {
//            gState = PlayerState.RunIdle;
//            Debug.Log("Idle -> Run");
//            animator.SetTrigger("IdleToRun");
//        }

//        if (Input.GetKeyDown(KeyCode.Z))
//        {
//            gState = PlayerState.Jump;
//        }
//    }

//    public void RunIdle()
//    {
//        if (Input.GetKeyUp(KeyCode.RightArrow) || Input.GetKeyUp(KeyCode.LeftArrow))
//        {
//            gState = PlayerState.RunToIdle;
//            Debug.Log("RunIdle -> RunToIdle");
//            animator.SetTrigger("RunIdleToRunToIdle");
//        }
//        else if (Input.GetKeyDown(KeyCode.Z))
//        {
//            gState = PlayerState.Jump;
//        }
//    }

//    public void Run()
//    {
//        if (Input.GetKeyUp(KeyCode.RightArrow) || Input.GetKeyUp(KeyCode.LeftArrow))
//        {
//            gState = PlayerState.RunToIdle;
//            Debug.Log("Run->Idle");
//            animator.SetTrigger("RunToRunToIdle");
//        }
//    }

//    public void RunToIdle()
//    {
//        if (Input.GetKeyDown(KeyCode.RightArrow) || Input.GetKeyDown(KeyCode.LeftArrow))
//        {
//            gState = PlayerState.Idle;
//            animator.SetTrigger("RunToIdleToRunIdle");
//        }
//    }

//    public void Jump()
//    {

//    }

//    public void Attack()
//    {

//    }
//}
#endregion