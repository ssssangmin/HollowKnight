using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UIFader : MonoBehaviour
{
    [SerializeField] Canvas title;
    [SerializeField] Canvas option;

    private CanvasGroup canvGroup;
    private CanvasGroup optGroup;
    private float duration = 0.4f;

    private void Start()
    {
        canvGroup = title.GetComponent<CanvasGroup>();
        optGroup = option.GetComponent<CanvasGroup>();
    }

    public void FadeOut()
    {
        TitleFade();
        Invoke("OptionFade", 1.0f);
    }

    public void FadeIn()
    {
        OptionFade();
        Invoke("TitleFade", 1.0f);
    }

    public void TitleFade()
    {
        StartCoroutine(DoFade(canvGroup, canvGroup.alpha, canvGroup.blocksRaycasts ? 0 : 1 ));

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

    private void OptionFade()
    {
        StartCoroutine(OptFade(optGroup, optGroup.alpha, optGroup.blocksRaycasts ? 0 : 1));

        optGroup.blocksRaycasts = !optGroup.blocksRaycasts;
    }

    private IEnumerator OptFade(CanvasGroup optGroup, float start, float end)
    {
        float counter = 0.0f;
        while (counter < duration)
        {
            counter += Time.deltaTime;
            optGroup.alpha = Mathf.Lerp(start, end, counter / duration);
            yield return null;
        }
    }
}
