using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingList
{
    public partial class Lists : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> colors = new List<string>();

            //add items in a List collection
            colors.Add("Red");
            colors.Add("Blue");
            colors.Add("Green");

            //insert an item in the list
            colors.Insert(1, "violet");

            //retrieve items using foreach loop
            foreach (string color in colors)
            {
                // alert.Show(color);
            }

            //remove an item from list
            //colors.Remove("violet");

            //retrieve items using for loop
            for (int i = 0; i < colors.Count; i++)
            {
                //MessageBox.Show(colors[i]);
            }

            if (colors.Contains("Blue"))
            {
               // MessageBox.Show("Blue color exist in the list");
            }
            else
            {
               // MessageBox.Show("Not exist");
            }

            //copy array to list
            string[] strArr = new string[3];
            strArr[0] = "Red";
            strArr[1] = "Blue";
            strArr[2] = "Green";
            List<string> arrlist = new List<string>(strArr);

            foreach (string str in strArr)
            {
               // MessageBox.Show(str);
            }

            //call clear method
            arrlist.Clear();

            //MessageBox.Show(arrlist.Count.ToString());

        }
    }
}