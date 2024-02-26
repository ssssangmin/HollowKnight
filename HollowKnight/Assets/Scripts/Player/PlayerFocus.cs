using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerFocus : MonoBehaviour
{
    private Animator anim;

    private void Start()
    {
        anim = GetComponent<Animator>();
    }

    private void Update()
    {
        if (UserInput.instance.controls.Focus.Focus.WasPressedThisFrame())
        {
            anim.SetTrigger("FocusOn");
        }

        if (UserInput.instance.controls.Focus.Focus.WasReleasedThisFrame())
        {
            anim.SetTrigger("FocusOff");
        }
    }
}
