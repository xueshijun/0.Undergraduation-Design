using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_productsAdd : System.Web.UI.UserControl
{
    BLL.Products products = new BLL.Products();
    BLL.ItemCategory category = new BLL.ItemCategory();
    protected void Page_Load(object sender, EventArgs e)
    {
        ddlChaCategory.DataSource = category.GetCategory();
        ddlChaCategory.DataTextField = "CName";
        ddlChaCategory.DataValueField = "CID";
        ddlChaCategory.DataBind();
    }
    protected void lbtnAdd_Click(object sender, EventArgs e)
    {
        Entity.Products pro = new Entity.Products();
        pro.setCategoryID(int.Parse(ddlChaCategory.SelectedValue));
        pro.setDescription(txtDescription.Text.Trim());
        pro.setName( txtName.Text.Trim()); 
        if (products.AddProduct(pro))
        {
            panelSuccess.Visible = true;
            lbSuccess.Text = "新增成功!";
        }
        else 
        {
            panelError.Visible = true;
            lbError.Text = "新增失败!";
        }
    }
}