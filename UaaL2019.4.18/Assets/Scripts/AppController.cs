using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AppController : MonoBehaviour
{
    [SerializeField] private Transform obj;

    private int direction = 1;

    private void Update()
    {
        obj.transform.Rotate(new Vector3(0, 0, 2 * direction));
    }

    public void Clockwise()
    {
        direction = -1;
    }

    public void Counterclockwise()
    {
        direction = 1;
    }
}
