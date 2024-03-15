using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UIAnimation : MonoBehaviour
{
    // 스프라이트와 ui스프라이트 렉트 받아오기
    private RectTransform rectTransform;
    private Sprite spriteOff;

    private void Start()
    {
        rectTransform = GetComponent<RectTransform>();
        spriteOff = GetComponent<Sprite>();
    }

    private void LateUpdate()
    {
        rectTransform.pivot = spriteOff.pivot / spriteOff.rect.size;
    }
}
