using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admins_ItemsProduct : System.Web.UI.Page
{
    BLL.Products products = new BLL.Products();
    BLL.ItemCategory category = new BLL.ItemCategory();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["AdminID"] == null) { Response.Redirect("Default.aspx"); }
            gvProductList.DataSource = products.GetProduct();
            gvProductList.DataBind();
            ddlChaCategory.DataSource = category.GetCategory();
            ddlChaCategory.DataTextField = "CName";
            ddlChaCategory.DataValueField = "CID";
            ddlChaCategory.DataBind();

            ddlCategory.DataSource = category.GetCategory();
            ddlCategory.DataTextField = "CName";
            ddlCategory.DataValueField = "CID";
            ddlCategory.DataBind();
            ddlCategory.Items.Add(new ListItem("全部", "0"));
            ddlCategory.SelectedValue = "0";
        }
    } 
    protected void lbtnApply_Click(object sender, EventArgs e)
    {

        if (ddlCategory.SelectedItem.Value == "0")
            gvProductList.DataSource = products.GetProduct();
        else
            gvProductList.DataSource = products.GetProductByCID(int.Parse(ddlCategory.SelectedItem.Value));
        gvProductList.DataBind();

    }
    protected void gvProductList_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        paneInfo.Visible = panelSuccess.Visible = panelError.Visible = panelAttention.Visible = false; 
        switch (e.CommandName) {
            case "Modify":
                try
                {
                    Entity.Products pro = products.GetProductInfo(int.Parse(e.CommandArgument.ToString()));
                    lbPID.Text = e.CommandArgument.ToString();
                    txtName.Text = pro.getName();
                    txtDescription.Text = pro.getDescription();
                    ddlChaCategory.SelectedValue = pro.getCategoryID().ToString();
                }
                catch { }
                break;
        }
    }
    protected void gvProductList_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.gvProductList.PageIndex = e.NewPageIndex; 
        if (ddlCategory.SelectedItem.Value == "0")
            gvProductList.DataSource = products.GetProduct();
        else
            gvProductList.DataSource = products.GetProductByCID(int.Parse(ddlCategory.SelectedItem.Value));
        gvProductList.DataBind();

    }
    protected void lbtnModify_Click(object sender, EventArgs e)
    {

        Entity.Products pro=new  Entity.Products();
        pro.setCategoryID(int.Parse(ddlChaCategory.SelectedValue));
        pro.setPID(int.Parse(lbPID.Text));
        pro.setName(txtName.Text.Trim());
        pro.setDescription(txtDescription.Text.Trim()); 
        if (lbPID.Text == "" || txtName.Text.Trim() == "")
        {
            panelAttention.Visible = true;
            lbAttention.Text = "请选择修改的类别并填写修改后的类别名";
        }
        //else if (products.UpdateProducts(int.Parse(lbPID.Text), int.Parse(ddlChaCategory.SelectedValue), txtName.Text.Trim(), txtDescription.Text.Trim()))
        else if (products.UpdateProducts(pro))
        {
            panelSuccess.Visible = true; 
            lbSuccess.Text = "更新成功！";
            lbPID.Text = "";
            txtDescription.Text = txtName.Text = "";
            if (ddlCategory.SelectedItem.Value == "0")
                gvProductList.DataSource = products.GetProduct();
            else
                gvProductList.DataSource = products.GetProductByCID(int.Parse(ddlCategory.SelectedItem.Value));
            gvProductList.DataBind();
        }
        else {
            panelError.Visible = true;
            lbError.Text = "更新失败！";
        }
    }
    protected void ddlChaCategory_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}