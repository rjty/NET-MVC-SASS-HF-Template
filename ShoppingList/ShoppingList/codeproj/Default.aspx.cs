using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        if(!IsPostBack)
            BindData();
    }
    protected void MoveRight(object sender, EventArgs e) {
        while(uxListBox1.Items.Count > 0 && uxListBox1.SelectedItem != null) {
            ListItem selectedItem = uxListBox1.SelectedItem;
            selectedItem.Selected = false;
            uxListBox2.Items.Add(selectedItem);
            uxListBox1.Items.Remove(selectedItem);
        }
    }
    protected void MoveLeft(object sender, EventArgs e) {
        while(uxListBox2.Items.Count > 0 && uxListBox2.SelectedItem != null) {
            ListItem selectedItem = uxListBox2.SelectedItem;
            selectedItem.Selected = false;
            uxListBox1.Items.Add(selectedItem);
            uxListBox2.Items.Remove(selectedItem);
        }
    }
    private void BindData() {
        uxListBox1.Items.Add(new ListItem("test1", "test1"));
        uxListBox1.Items.Add(new ListItem("test2", "test2"));
        uxListBox1.Items.Add(new ListItem("test3", "test3"));
    }
}
