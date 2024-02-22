using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Scripting.APIUpdating;

#region 1
public class PlayerController : MonoBehaviour
{
    [SerializeField] private float speed = 3.0f;  // �̵��ӵ�

    [SerializeField] private float jumpTime = 0.5f;
    [SerializeField] private float jump = 12.0f;       // ������

    [SerializeField] private float extraHeight = 0.25f;
    [SerializeField] private LayerMask groundLayer;   // ���� ������ ���̾�

    private float moveInput;

    private Rigidbody2D rbody;          // RigidBody 2D ������Ʈ
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
        // UserInput Ŭ���� �ν��Ͻ����� �¿� �̵� �� �޾ƿ���.
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
        // ������ �Է����� ��
        if (UserInput.instance.controls.Jumping.Jump.WasPressedThisFrame() && isGrounded())
        {
            animator.SetTrigger("Jump");
            isJumping = true;
            jumpTimeCounter = jumpTime;
            rbody.velocity = new Vector2(rbody.velocity.x, jump);
        }
        // ������
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
                animator.SetTrigger("JumpToFallIdle");
                isJumping = false;
            }
        }
        // ���� ��ư���� �� ������ ��
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
        animator.ResetTrigger("JumpToFallIdle");
    }
}
#endregion

#region
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
#endregion