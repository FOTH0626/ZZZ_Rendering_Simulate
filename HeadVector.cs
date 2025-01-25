//Remenber Create 3 Empty Object 
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
public class HeadVector : MonoBehaviour
{
    public Transform HeadBoneTransform;
    public Transform HeadForwardTransform;
    public Transform HeadRightTransform;
    
    private Renderer[] allRanderers;

    private int headCenterID = Shader.PropertyToID("_HeadCenter");
    private int headRightID = Shader.PropertyToID("_HeadRight");
    private int headForwardID = Shader.PropertyToID("_HeadForward");
    // Update is called once per frame
    
    #if UNITY_EDITOR
    void OnValidate()
    {
        Update();
    }
    #endif
    
    
    void Update()
    {
        if (allRanderers == null)
        {
            allRanderers = GetComponentsInChildren<Renderer>(true); 
        }

        for (int i = 0; i < allRanderers.Length; i++)
        {
            Renderer r = allRanderers[i];
            foreach (Material mat in r.sharedMaterials )
            {
                if (mat.shader)
                {
                    if (mat.shader.name == "ZZZ/AvatarUI")
                    {
                        mat.SetVector(headCenterID, HeadBoneTransform.position);
                        mat.SetVector(headForwardID, HeadForwardTransform.position);
                        mat.SetVector(headRightID, HeadRightTransform.position); 
                    }
                }
            }
        }
    }
}
