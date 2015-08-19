using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_itemCategory : System.Web.UI.UserControl
{ 
    BLL.ItemCategory category = new BLL.ItemCategory();
    protected void Page_Load(object sender, EventArgs e)
    {
        gvCategory.DataSource = category.GetCategory();
        gvCategory.DataBind();
    }
    protected void lbtnModify_Click(object sender, EventArgs e)
    {
        panelError.Visible = panelSuccess.Visible = panelAttention.Visible = paneInfo.Visible = false;
        lbError.Text = lbInfo.Text = lbAttention.Text = lbSuccess.Text = "";
        if (lbCID.Text == "") { 
            panelAttention.Visible = true;
            lbAttention.Text = "请选择更改的项！";
        }
        else if (category.UpdateCategory(int.Parse(lbCID.Text), txt2Name.Text, txt2Description.Text))
        {
            panelSuccess.Visible = true;
            lbSuccess.Text = "更新类别名成功！";
            gvCategory.DataSource = category.GetCategory();
            gvCategory.DataBind();
            lbCID.Text = txt2Description.Text = txt2Name.Text = "";
        }
        else {
            panelError.Visible = true;
            lbError.Text = "更新类别名失败！";
        }
    }
    protected void gvCategory_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "Modify":
                Entity.ItemCategory itemCategory = category.GetCategoryByCID(int.Parse(e.CommandArgument.ToString()));
                lbCID.Text = itemCategory.getCID().ToString();
                txt2Name.Text = itemCategory.getCName();
                txt2Description.Text = itemCategory.getDescription(); 
                break;
        }
    } 
}