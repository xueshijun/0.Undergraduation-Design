using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_salePromotion : System.Web.UI.UserControl
{
    BLL.Articles article = new BLL.Articles();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlOnSale.DataSource = article.GetdsArticleListByCID(2);
            ddlOnSale.DataBind();

            for (int i = 0; i < ddlOnSale.Items.Count; i++)
            { 
                Label label=(Label)ddlOnSale.Items[i].FindControl("lbContent");
                if (BLL.TextHelper.NoHTML(label.Text).Length > 70)
                    label.Text = BLL.TextHelper.NoHTML(label.Text).Substring(0, 70) + "......";
                else
                    label.Text = BLL.TextHelper.NoHTML(label.Text);
            }
        }
    }

    protected void ddlOnSale_ItemCommand(object source, DataListCommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "view":
                Response.Redirect("ArticleDetails.aspx?AID=" + e.CommandArgument.ToString());
                break;
        }
    }  
}