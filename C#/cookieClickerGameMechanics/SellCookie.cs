using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SellCookie : MonoBehaviour
{
    public GameObject textBox;
    public GameObject statusBox;
    public AudioSource cashOne;
    public AudioSource cashTwo;
    public int generateTone;
    public AudioSource noCookie;

    public void ClickTheButton ()
    {
        //plays different audios randomly to give some spice
        generateTone = Random.Range(1, 3);


        // textBox.SetActive(true);   this can make a text box visible/invisible; this instance would make it VISIBLE
        if (GlobalCookies.CookieCount <= 0)
        {
            noCookie.Play();   
            statusBox.GetComponent<Text>().text = "Not enough cookies to sell!";
            statusBox.GetComponent<Animation>().Play("StatusAnim");
        }
        else
        {
            if(generateTone == 1)
            {
                cashOne.Play();
            }
            if (generateTone == 2)
            {
                cashTwo.Play();
            }

            GlobalCookies.CookieCount -= 1;
            GlobalCash.CashCount += 1;
        }
    }
}
