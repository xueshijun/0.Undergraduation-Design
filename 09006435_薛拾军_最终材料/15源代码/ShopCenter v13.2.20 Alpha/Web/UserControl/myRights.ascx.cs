using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_myRights : System.Web.UI.UserControl
{
    BLL.Articles article = new BLL.Articles();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlMyRight.DataSource = article.GetdsArticleListByCID(5);
            ddlMyRight.DataBind();


            for (int i = 0; i < ddlMyRight.Items.Count; i++)
            {
                Label label = (Label)ddlMyRight.Items[i].FindControl("lbTitle");
                if (BLL.TextHelper.NoHTML(label.Text).Length>10)
                    label.Text = BLL.TextHelper.NoHTML(label.Text).Substring(0,10) + "....";
                else
                    label.Text = BLL.TextHelper.NoHTML(label.Text);
            }
        }
    }
    protected void ddlMyRight_ItemCommand(object source, DataListCommandEventArgs e)
    {
        switch (e.CommandName) {
            case "view":
                Response.Redirect("ArticleDetails.aspx?AID="+e.CommandArgument.ToString());
                break; 
        }
    }
}