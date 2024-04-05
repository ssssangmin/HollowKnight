using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UIHealthBar : MonoBehaviour
{
    [SerializeField] private Component[] anims;
    private Animator animator;

    private void Awake()
    {
        foreach (Animator anim in anims)
            anim.enabled = false;
    }

    private void Start()
    {
        foreach (Animator anim in anims)
        {
            for (int i = 0; i < anims.Length; i++)
            {
                anim.Play("Health_Appear");
            }
        }
    }

    private void HealthAppear()
    {
        
    }
}
