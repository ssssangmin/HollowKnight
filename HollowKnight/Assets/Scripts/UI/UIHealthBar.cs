using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UIHealthBar : MonoBehaviour
{
    [SerializeField] private Component[] anims;

    private void Awake()
    {
        foreach (Animator anim in anims)
            anim.enabled = false;
    }

    private void Start()
    {
        foreach (Animator anim in anims)
            anim.Play("Health_Appear");
    }

    private void HealthAppear()
    {
        
    }
}
