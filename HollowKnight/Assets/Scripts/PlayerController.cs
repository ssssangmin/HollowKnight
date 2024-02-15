using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// 12/31�� ��������
// ���� ��� ����

#pragma region
public class PlayerController : MonoBehaviour
{
    Rigidbody rbody;          // RigidBody 2D ������Ʈ
    float axisH = 0.0f;         // �¿� ����Ű �Է�
    public float speed = 3.0f;  // �̵��ӵ�

    public float buttonTime = 1.0f;
    public float jump = 10.0f;       // ������
    float jumpTime;
    public LayerMask groundLayer;   // ���� ������ ���̾�
    bool goJump;            // ���� Ű �Է� ���� �˻�
    float gravity = -20.0f;

    bool onGround = false;          // ����� ���� ���� �˻�

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
        // ĳ���� ���� ����
        if (axisH > 0.0f)
        {
            // ������ �̵�
            Debug.Log("������ �̵�");
            transform.localScale = new Vector2(1, 1);
        }
        else if (axisH < 0.0f)
        {
            Debug.Log("���� �̵�");
            transform.localScale = new Vector2(-1, 1); // �¿� ����
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
        // ���� ���� ó��
        //onGround = Physics2D.Linecast(transform.position, transform.position - (transform.up * 0.9f), groundLayer);

        if (axisH != 0)
        {
            // ĳ���Ͱ� ���鿡 �ְų� x�� �Է� ���� 0�� �ƴ� ��� velocity ����
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
            // ĳ���Ͱ� ���鿡 ���� �� ���� Ű�� �Է����� ���
            Debug.Log("����!");
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
//    Rigidbody2D rbody;          // RigidBody 2D ������Ʈ
//    float axisH = 0.0f;         // �¿� ����Ű �Է�
//    public float speed = 3.0f;  // �̵��ӵ�

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
//    public float jump = 20.0f;       // ������
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
//        // ĳ���� ���� ����
//        if (axisH > 0.0f)
//        {
//            // ������ �̵�
//            Debug.Log("������ �̵�");
//            transform.localScale = new Vector2(1, 1);
//        }
//        else if (axisH < 0.0f)
//        {
//            Debug.Log("���� �̵�");
//            transform.localScale = new Vector2(-1, 1); // �¿� ����
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