using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UIAnimation : MonoBehaviour
{
    // ��������Ʈ�� ui��������Ʈ ��Ʈ �޾ƿ���
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
