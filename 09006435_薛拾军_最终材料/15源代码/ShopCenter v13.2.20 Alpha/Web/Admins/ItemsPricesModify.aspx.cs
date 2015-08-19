using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admins_ItemsPricesModify : System.Web.UI.Page
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
        if (lbItemID.Text == "" || txtAgoraPrice.Text == "" || txtMemberPrice.Text == "" || txtSeckillPrice.Text == "" || txtVipPrice.Text == "")
        {
            panelAttention.Visible = true;
            lbAttention.Text = "请先选择修改项目！";
        }
        else
        {
            Entity.Items item = new Entity.Items();
            item.setItemID(int.Parse(lbItemID.Text));
            item.setAgoraPrice(txtAgoraPrice.Text);
            item.setMemberPrice(txtMemberPrice.Text);
            item.setVipPrice( txtVipPrice.Text);
            item.setSeckillPrice(txtSeckillPrice.Text);
            if (items.UpdateSinglePrice(item))
            {
                panelSuccess.Visible = true;
                lbSuccess.Text = "价格更新成功！";
                txtAgoraPrice.Text = txtMemberPrice.Text = ""; txtSeckillPrice.Text = ""; txtVipPrice.Text = "";
            }
            else {
                panelError.Visible = true;
                lbError.Text = "更新出错！";
            }
        }

    }
    protected void gvItemsList_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        paneInfo.Visible = panelAttention.Visible = panelError.Visible = panelSuccess.Visible = false;
        switch (e.CommandName)
        {
            case "xiugai":
                Entity.Items item = items.GetSingleItem(int.Parse(e.CommandArgument.ToString()));
                lbItemID.Text = e.CommandArgument.ToString();
                txtAgoraPrice.Text = item.getAgoraPrice();
                txtMemberPrice.Text = item.getMemberPrice();
                txtSeckillPrice.Text = item.getSeckillPrice();
                txtVipPrice.Text = item.getVipPrice();  
                break;
        }
    }
}