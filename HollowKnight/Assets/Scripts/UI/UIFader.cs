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

        // �ٽ� �� ������ ����. ���� �ɼǿ��� �ڷ� ��ư ������ �ٽ� ���ƿ�.
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
