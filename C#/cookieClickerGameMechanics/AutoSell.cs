using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AutoSell : MonoBehaviour
{
    public bool SellingCookie = false;
    public static int cashIncrease = 1;
    public int InternalIncrease;



    // Update is called once per frame
    void Update()
    {
        cashIncrease = GlobalShop.shopPerSec;
        InternalIncrease = cashIncrease;

        if (SellingCookie == false)
        {
            SellingCookie = true;
            StartCoroutine(SellTheCookie());
        }


    }
    IEnumerator SellTheCookie()
    {
        if (GlobalCookies.CookieCount == 0)
        {
            //we can't do anything
        }
        else
        {
            GlobalCookies.CookieCount -= InternalIncrease;
            GlobalCash.CashCount += InternalIncrease;
            yield return new WaitForSeconds(1);
            SellingCookie = false;
        }
    }

}
