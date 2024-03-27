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
    private bool mfaded = false;
    private bool ofaded = true;

    private void Start()
    {
        canvGroup = title.GetComponent<CanvasGroup>();
        optGroup = option.GetComponent<CanvasGroup>();
    }

    public void Fade()
    {
        StartCoroutine(DoFade(canvGroup, canvGroup.alpha, mfaded ? 1 : 0 ));

        mfaded = !mfaded;

        // 다시 못 누르게 막기. 이후 옵션에서 뒤로 버튼 누르면 다시 돌아옴.
        canvGroup.blocksRaycasts = !canvGroup.blocksRaycasts;

        Invoke("OptionFade", 1.0f);
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
        StartCoroutine(OptFade(optGroup, optGroup.alpha, ofaded ? 1 : 0));

        ofaded = !ofaded;

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
