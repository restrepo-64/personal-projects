using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DisasterScript : MonoBehaviour
{
    public GameObject statusBox;
    public float cookieCheck;
    public int genChance;
    public bool disasterActive = false;
    public int cookieLoss;

    // Update is called once per frame
    void Update()
    {
        cookieCheck = GlobalCookies.CookieCount / 10;   //will increase chance with disaster ocurring with higher number of cookies, 10 for testing, 100 norm

        if (disasterActive == false)
        {
            StartCoroutine(StartDisaster());
        }


    }

    IEnumerator StartDisaster()
    {
        disasterActive = true;
        genChance = Random.Range(1, 20);   //200 norm, 20 for test

        if (cookieCheck >= genChance)   
        {
            cookieLoss = Mathf.RoundToInt(GlobalCookies.CookieCount * .25f);
            statusBox.GetComponent<Text>().text = "You lost " + cookieLoss + " cookies in a factory fire!";
            GlobalCookies.CookieCount -= cookieLoss;
            yield return new WaitForSeconds(3);  //leaves on screen a little longer before fading
            statusBox.GetComponent<Animation>().Play("StatusAnim");
            yield return new WaitForSeconds(1);
            statusBox.SetActive(false);
            statusBox.SetActive(true);

        }
        yield return new WaitForSeconds(10);  //this makes game wait seconds, for this example, the higher the number the less often fire is to happen
                                              //again, lower, the more likely it is to happen and lose more cookies, etc
        disasterActive = false;
    }
}
