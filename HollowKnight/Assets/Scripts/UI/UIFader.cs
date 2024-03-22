using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UIFader : MonoBehaviour
{
    [SerializeField] Canvas title;

    private float duration = 0.4f;
    private bool mfaded = false;

    public void Fade()
    {
        CanvasGroup canvGroup = title.GetComponent<CanvasGroup>();

        StartCoroutine(DoFade(canvGroup, canvGroup.alpha, mfaded ? 1 : 0 ));

        mfaded = !mfaded;

        // 다시 못 누르게 막기. 이후 옵션에서 뒤로 버튼 누르면 다시 돌아옴.
        canvGroup.blocksRaycasts = !canvGroup.blocksRaycasts;
    }

    public IEnumerator DoFade(CanvasGroup canvGroup, float start, float end)
    {
        float counter = 0.0f;

        while (counter < duration)
        {
            counter += Time.deltaTime;
            canvGroup.alpha = Mathf.Lerp(start, end, counter / duration);

            yield return null;
        }
    }
}
