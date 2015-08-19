using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admins_ItemSetting : System.Web.UI.Page
{
    BLL.Items items = new BLL.Items();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminID"] == null) { Response.Redirect("Default.aspx"); }
        gvItemsList.DataSource = items.GetItemByAllWithNoImg();
        gvItemsList.DataBind();

    }
    protected void lbtnModify_Click(object sender, EventArgs e)
    {
        Entity.Items item = new Entity.Items();
        item.setItemID(int.Parse(lbItemID.Text));
        item.setDays(txtDays.Text);
        item.setHours(txtHour.Text);
        item.setMinutes(txtMinutes.Text);
        item.setSeconds( txtSeconds.Text);
        item.setIsSecondKill(rblIsSecondKill.SelectedValue.ToLower());
        if (lbItemID.Text == string.Empty || txtDays.Text == string.Empty
            || txtHour.Text == string.Empty || txtMinutes.Text == string.Empty || txtSeconds.Text == string.Empty)
        {
            panelAttention.Visible = true;
            lbAttention.Text = "请先选择需要设置的商品！";
        }
        else if (items.UpdateSingleItem(item))
        {
            panelSuccess.Visible = true;
            lbSuccess.Text = "更新成功！";
            txtSeconds.Text = txtMinutes.Text = txtHour.Text = txtDays.Text =lbItemID.Text= "";
            gvItemsList.DataSource = items.GetItemByAllWithNoImg();
            gvItemsList.DataBind(); 
        }
        else 
        {
            panelError.Visible = false;
            lbError.Text = "更新失败！";
        }   
    }
    
    //
    protected void gvItemsList_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        paneInfo.Visible = panelAttention.Visible = panelError.Visible = panelSuccess.Visible = false;
        switch (e.CommandName) {
            case "xiugai":
                Entity.Items item = items.GetSingleItem(int.Parse(e.CommandArgument.ToString()));
                lbItemID.Text = e.CommandArgument.ToString();
                txtDays.Text = item.getDays();
                txtHour.Text = item.getHours();
                txtMinutes.Text = item.getMinutes();
                txtSeconds.Text = item.getSeconds();
                rblIsSecondKill.SelectedValue = item.getIsSecondKill().ToLower();
                break;
        }
    }
    protected void gvItemsList_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvItemsList.PageIndex = e.NewPageIndex;
        gvItemsList.DataSource = items.GetItemByAllWithNoImg();
        gvItemsList.DataBind();
    }
}