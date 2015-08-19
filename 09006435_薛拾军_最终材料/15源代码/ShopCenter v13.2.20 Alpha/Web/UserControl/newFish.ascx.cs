using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_newFish : System.Web.UI.UserControl
{
    BLL.Articles article = new BLL.Articles();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) 
        {
            ddlNewFish.DataSource = article.GetdsArticleListByCID(3);
            ddlNewFish.DataBind();
            for (int i = 0; i < ddlNewFish.Items.Count; i++)
            {
                Label label = (Label)ddlNewFish.Items[i].FindControl("lbContent");
                if (BLL.TextHelper.NoHTML(label.Text).Length > 10)
                    label.Text = BLL.TextHelper.NoHTML(label.Text).Substring(0, 10) + "....";
                else
                    label.Text = BLL.TextHelper.NoHTML(label.Text);
            }
        }
    }
    protected void ddlNewFish_ItemCommand(object source, DataListCommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "view":
                Response.Redirect("ArticleDetails.aspx?AID=" + e.CommandArgument.ToString());
                break;
        }
    }
}