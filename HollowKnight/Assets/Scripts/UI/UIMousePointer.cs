using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class UIMousePointer : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler
{
    public Component[] anims;

    private void Start()
    {
        anims = GetComponentsInChildren<Animator>();
        foreach (Animator anim in anims)
            anim.enabled = false;
    }

    public void OnPointerEnter(PointerEventData eventData)
    {
        foreach (Animator anim in anims)
        {
            anim.enabled = true;
            anim.Play("Menu_pointer_up");
        }

    }

    public void OnPointerExit(PointerEventData eventData)
    {
       foreach (Animator anim in anims)
        {
            anim.Play("Menu_pointer_down");
        }
    }
}
