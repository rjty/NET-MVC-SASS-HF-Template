using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingList
{
    public partial class _Default : Page
    {
        private Boolean outcome = false;
        private string theItemText = "";
        //List<string> uxListBox1 = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                outcome = BindData();

                // we have populated the start data
                if (outcome)
                {


                }
            } else
            {



            }
        }


        protected void MoveRight(object sender, EventArgs e)
        {
            while (uxListBox1.Items.Count > 0 && uxListBox1.SelectedItem != null)
            {
                ListItem selectedItem = uxListBox1.SelectedItem;
                selectedItem.Selected = false;
                uxListBox2.Items.Add(selectedItem);
                uxListBox1.Items.Remove(selectedItem);
            }
        }
        protected void MoveLeft(object sender, EventArgs e)
        {
            while (uxListBox2.Items.Count > 0 && uxListBox2.SelectedItem != null)
            {
                ListItem selectedItem = uxListBox2.SelectedItem;
                selectedItem.Selected = false;
                uxListBox1.Items.Add(selectedItem);
                uxListBox2.Items.Remove(selectedItem);
            }
        }
        private Boolean BindData()
        {
            bool success = false;
            try
            {
                uxListBox1.Items.Add(new ListItem("test1", "test1"));
                uxListBox1.Items.Add(new ListItem("test2", "test2"));
                uxListBox1.Items.Add(new ListItem("test3", "test3"));
                success = true;

            } catch
            {
                success = false;
            }

        return success;

        }

        public void MoveUp()
        {
            MoveItem(-1);
        }

        public void MoveDown()
        {
            MoveItem(1);
        }

        public void MoveItem(int direction)
        {
            // Checking selected item
            if (uxListBox1.SelectedItem == null || uxListBox1.SelectedIndex < 0)
                return; // No selected item - nothing to do

            // Calculate new index using move direction
            int newIndex = uxListBox1.SelectedIndex + direction;

            // Checking bounds of the range
            if (newIndex < 0 || newIndex >= uxListBox1.Items.Count)
                return; // Index out of range - nothing to do

            object selected = uxListBox1.SelectedItem;

            // Removing removable element
            uxListBox1.Items.Remove(selected.ToString());
            // Insert it in new position
            uxListBox1.Items.Insert(newIndex, selected.ToString());
            // Restore selection
            //uxListBox1.SelectedValue(newIndex, true);
        }


        protected void uxListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void uxListBox2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void MoveUp(object sender, EventArgs e)
        {
            MoveUp();
        }

        protected void MoveDown(object sender, EventArgs e)
        {
            MoveUp();
        }

        protected void TextBoxItem_TextChanged(object sender, EventArgs e)
        {
            // tbd: validate if required
            TextBox textBox = sender as TextBox;
            if (textBox != null)
            {
                theItemText = textBox.Text;
            }
        }

        protected void SubmitNewItem_Click(object sender, EventArgs e)
        {
            // tbd: add an item to the current items list
            //List<int> iList = new List<int>();
            uxListBox1.Items.Add(theItemText);
        }
    }
}