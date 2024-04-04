using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FollowCam : MonoBehaviour
{
    public GameObject player;
    public Transform playerTrans;
    public Animator anim;
    private PlayerController pCon;

    // Start is called before the first frame update
    void Start()
    {
        anim = player.GetComponent<Animator>();
        anim.SetTrigger("StartFall");
        pCon = PlayerController.instance;
    }

    // Update is called once per frame
    void Update()
    {
        // 튜토리얼 씬에 처음 들어왔을 때 바닥에 착지하는 모션
        transform.position = new Vector3(playerTrans.position.x, playerTrans.position.y, playerTrans.position.z - 10);

        //if (pCon.)
        //{
        //    anim.SetTrigger("FallToLand");
        //    enabled = false;
        //}
    }
}
