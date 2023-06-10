using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GlobalBaker : MonoBehaviour
{
    public GameObject fakeButton;
    public GameObject fakeText;
    public GameObject realButton;
    public GameObject realText;
    public int currentCash;
    public static int bakerValue = 10;
    public static bool turnOffButton = false;
    public GameObject bakerStats;
    public static int numberofBakers;
    public static int bakePerSec;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        currentCash = GlobalCash.CashCount;
        bakerStats.GetComponent<Text>().text = "Bakers: " + numberofBakers + " @ " + bakePerSec + " Per Second";
        fakeText.GetComponent<Text>().text = "Hire Baker = $" + bakerValue;
        realText.GetComponent<Text>().text = "Hire Baker = $" + bakerValue;

        if (currentCash >= bakerValue)
        {
            fakeButton.SetActive(false);
            realButton.SetActive(true);
        }
        if(turnOffButton == true)
        {
            realButton.SetActive(false);
            fakeButton.SetActive(true);
            turnOffButton = false;
        }
      /*
        else
        {
            fakeButton.SetActive(true);
            realButton.SetActive(false);
        } */
    }
}
