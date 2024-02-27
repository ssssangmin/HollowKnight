using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// a 누르고 있다가 2초 지나면 a를 계속 누르고 있는 상태여도 원래 상태로 돌아오게 하기.
public class PlayerFocus : MonoBehaviour
{
    [SerializeField] private float focusDelay = 1.0f;      // 집중모션 딜레이
    private Animator anim;

    private float focusTimer;

    private bool isholding;

    private void Start()
    {
        anim = GetComponent<Animator>();

        focusTimer = 0;
        isholding = false;
    }

    private void Update()
    {
        if (UserInput.instance.controls.Focus.Focus.WasPressedThisFrame() && !isholding)
        {
            PlayerController.instance.canMove = false;

            focusTimer += Time.deltaTime;

            anim.SetTrigger("FocusOn");

            if (focusTimer >= focusDelay)
            {
                isholding = true;
                anim.SetTrigger("FocusOff");
                focusTimer = 0.0f;
                StartCoroutine(FocusDelayTime());
            }
        }

        if (UserInput.instance.controls.Focus.Focus.WasReleasedThisFrame())
        {
            PlayerController.instance.canMove = true;
            isholding = false;
            anim.SetTrigger("FocusOff");
            focusTimer = 0.0f;
        }
    }

    IEnumerator FocusDelayTime()
    {
        yield return new WaitForSeconds(1.0f);
    }
}
