using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// 12/31일 수정사항
// 착지 모션 수정

#pragma region
public class PlayerController : MonoBehaviour
{
    Rigidbody rbody;          // RigidBody 2D 컴포넌트
    float axisH = 0.0f;         // 좌우 방향키 입력
    public float speed = 3.0f;  // 이동속도

    public float buttonTime = 1.0f;
    public float jump = 10.0f;       // 점프력
    float jumpTime;
    public LayerMask groundLayer;   // 착지 가능한 레이어
    bool goJump;            // 점프 키 입력 상태 검사
    float gravity = -20.0f;

    bool onGround = false;          // 지면과 접촉 상태 검사

    bool backIdle = false;

    Animator animator;

    private void Start()
    {
        animator = GetComponent<Animator>();

        rbody = this.GetComponent<Rigidbody>();
    }

    private void Update()
    {
        axisH = Input.GetAxisRaw("Horizontal");
        // 캐릭터 방향 조절
        if (axisH > 0.0f)
        {
            // 오른쪽 이동
            Debug.Log("오른쪽 이동");
            transform.localScale = new Vector2(1, 1);
        }
        else if (axisH < 0.0f)
        {
            Debug.Log("왼쪽 이동");
            transform.localScale = new Vector2(-1, 1); // 좌우 반전
        }

        if (Input.GetButtonUp("Horizontal") && axisH == 0.0f)
        {
            animator.SetBool("HorizontalKeyDown", false);
            RunToIdle();
        }

        if (Input.GetKeyDown(KeyCode.Z))
        {
            goJump = true;
            jumpTime = 0;
            animator.Play("Jump");
        }
        if (goJump)
        {
            jumpTime += Time.deltaTime;
        }
        if (Input.GetKeyUp(KeyCode.Z) || jumpTime > buttonTime)
        {
            animator.SetTrigger("JumpToFallIdle");
            goJump = false;
        }

    }

    private void FixedUpdate()
    {
        // 착지 판정 처리
        //onGround = Physics2D.Linecast(transform.position, transform.position - (transform.up * 0.9f), groundLayer);

        if (axisH != 0)
        {
            // 캐릭터가 지면에 있거나 x축 입력 값이 0이 아닐 경우 velocity 변경
            rbody.velocity = new Vector2(axisH * speed, rbody.velocity.y);
            //transform.Translate(new Vector3(axisH * speed * Time.deltaTime, 0, 0));
            animator.SetBool("HorizontalKeyDown", true);
            animator.SetBool("HorizontalKeyUp", false);
        }

        if (backIdle)
        {
            Debug.Log("runtoidle");
            animator.SetBool("HorizontalKeyUp", true);
            backIdle = false;
        }

        if (goJump)
        {
            // 캐릭터가 지면에 있을 때 점프 키를 입력했을 경우
            Debug.Log("점프!");
            rbody.velocity = new Vector2(rbody.velocity.x, jump);
            
        }

        rbody.velocity = new Vector2(rbody.velocity.x, rbody.velocity.y + gravity * Time.deltaTime);
    }

    public void RunToIdle()
    {
        backIdle = true;
    }

    //private void OnCollisionEnter(Collision collision)
    //{
    //    if (collision.gameObject.layer == 6)
    //    {
    //        animator.SetTrigger("FallToLand");
    //    }
    //}
}
#pragma endregion

#pragma region version1
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
#pragma endregion