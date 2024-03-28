using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UIVolumeValue : MonoBehaviour
{
    private Slider sValue;
    private Text text;

    private void Awake()
    {
        text = GetComponent<Text>();
        sValue = GetComponentInParent<Slider>();
    }

    private void Start()
    {
        UpdateText(sValue.value);
        sValue.onValueChanged.AddListener(UpdateText);
    }

    private void UpdateText(float val)
    {
        text.text = sValue.value.ToString();
    }
}
