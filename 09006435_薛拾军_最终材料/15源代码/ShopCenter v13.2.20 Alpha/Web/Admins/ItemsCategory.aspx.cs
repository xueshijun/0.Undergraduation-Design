using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admins_ItemsCategory : System.Web.UI.Page
{ 
    BLL.ItemCategory category = new BLL.ItemCategory();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["AdminID"] == null) { Response.Redirect("Default.aspx"); }
    }
    protected void lbtnAdd_Click(object sender, EventArgs e)
    {
        if (category.InsertCategory(txtCName.Text,txtDescription.Text))
        {
            panelSuccess.Visible = true;
            lbSuccess.Text = "添加分类成功!";
  
        }
        else
        {
            panelError.Visible = true;
            lbError.Text = "添加分类失败!";
        } 
    } 
}