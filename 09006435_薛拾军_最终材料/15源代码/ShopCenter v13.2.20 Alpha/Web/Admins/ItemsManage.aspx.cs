using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admins_ItemsManage : System.Web.UI.Page
{
    BLL.Brands brand = new BLL.Brands();
    BLL.Products products = new BLL.Products();
    BLL.Items items = new BLL.Items();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["AdminID"] == null) { Response.Redirect("Default.aspx"); }

            gvItemsList.DataSource = items.GetItemByAllWithNoImg();
            gvItemsList.DataBind();

            ddlBrandID.DataSource = brand.GetBrands();
            ddlBrandID.DataTextField = "BrandName";
            ddlBrandID.DataValueField = "BID";
            ddlBrandID.DataBind();

            ddlProductID.DataSource = products.GetProduct();
            ddlProductID.DataValueField = "PID";
            ddlProductID.DataTextField = "Name";
            ddlProductID.DataBind();
        }
    }
    protected void lbtnModify_Click(object sender, EventArgs e)
    {
       
            switch (lbtnModify.Text)
            {
                case "更新":
                    if (lbItemID.Text == "" || txtItemName.Text == "" || txtArea.Text == "")
                    {
                        panelAttention.Visible = true;
                        lbAttention.Text = "请先选择更新的商品并填写相关信息!";
                    }
                    else
                    {
                        Entity.Items item = new Entity.Items();
                        item.setItemID(int.Parse(lbItemID.Text));
                        item.setProductID(int.Parse(ddlProductID.SelectedItem.Value));
                        item.setBrandID(int.Parse(ddlBrandID.SelectedItem.Value));
                        item.setName(txtItemName.Text.Trim());
                        item.setArea(txtArea.Text.Trim());
                        if (items.UpdateSingleItem(item))
                        {
                            panelSuccess.Visible = true;
                            lbSuccess.Text = "商品信息更新成功!";
                            gvItemsList.DataSource = items.GetItemByAllWithNoImg();
                            gvItemsList.DataBind();
                            txtArea.Text = txtItemName.Text = lbItemID.Text = "";
                        }
                        else
                        {
                            panelError.Visible = false;
                            lbError.Text = "商品信息更新失败!";
                        }
                    }
                    break;
                case "删除":
                    if (lbItemID.Text == "")
                    {
                        panelAttention.Visible = true;
                        lbAttention.Text = "请先选择更新的商品并填写相关信息!";
                    }
                    else
                    {
                        if (items.DeleteItem(int.Parse(lbItemID.Text)))
                        {
                            panelSuccess.Visible = true;
                            lbSuccess.Text = "商品信息删除成功!";
                            gvItemsList.DataSource = items.GetItemByAllWithNoImg();
                            gvItemsList.DataBind();
                        }
                        else
                        {
                            panelError.Visible = true;
                            lbError.Text = "商品信息删除失败!";
                        }
                    }
                    break;  
        }
      
    }
    protected void gvItemsList_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        paneInfo.Visible = panelAttention.Visible = panelError.Visible = panelSuccess.Visible = false;
        txtArea.Text = txtItemName.Text = "";
        Entity.Items item;
        switch (e.CommandName)
        {
            case "xiugai": 
                item = items.GetSingleItem(int.Parse(e.CommandArgument.ToString())); 
                lbItemID.Text = e.CommandArgument.ToString();
                txtItemName.Text = item.getName();
                Textarea1.Value = item.getDetails();
                txtArea.Text = item.getArea();
                try { ddlBrandID.SelectedValue = item.getBrandID().ToString(); } catch { }
                try { ddlProductID.SelectedValue = item.getProductID().ToString();  } catch { }
                lbtnModify.Text = "更新";
                break;
            case "shanchu": 
                item = items.GetSingleItem(int.Parse(e.CommandArgument.ToString()));
                lbItemID.Text = e.CommandArgument.ToString();
                txtItemName.Text = item.getName();
                Textarea1.Value = item.getDetails();
                txtArea.Text = item.getArea();
                try { ddlBrandID.SelectedValue = item.getBrandID().ToString(); } catch { }
                try { ddlProductID.SelectedValue = item.getProductID().ToString();  } catch { } 
                lbtnModify.Text = "删除";
                break;
            default: break;
        }
    }
    protected void gvItemsList_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvItemsList.PageIndex = e.NewPageIndex;
        gvItemsList.DataSource = items.GetItemByAllWithNoImg();
        gvItemsList.DataBind();
    } 
}