using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GlobalShop : MonoBehaviour
{
    public GameObject fakeButton;
    public GameObject fakeText;
    public GameObject realButton;
    public GameObject realText;
    public int currentCash;
    public static int shopValue = 10;
    public static bool turnOffButton = false;
    public GameObject shopStats;
    public static int numberofShops;
    public static int shopPerSec;

    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        // displays stats for shops owned and changes text for shop button
        currentCash = GlobalCash.CashCount;
        shopStats.GetComponent<Text>().text = "Shops: " + numberofShops + " @ " + shopPerSec + " Per Second";
        fakeText.GetComponent<Text>().text = "Buy Shop = $" + shopValue;
        realText.GetComponent<Text>().text = "Buy Shop = $" + shopValue;

        //disables/enables button if user doesn't/does have enough cash to buy a shop
        if (currentCash >= shopValue)
        {
            fakeButton.SetActive(false);
            realButton.SetActive(true);
        }
        if (turnOffButton == true)
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
