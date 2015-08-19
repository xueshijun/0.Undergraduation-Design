using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_publicNotice : System.Web.UI.UserControl
{
    BLL.Articles article = new BLL.Articles();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            formView.DataSource = article.GetdsTopArticleByCID(1); 
                formView.DataBind();
                Label label = (Label)formView.FindControl("lbContent");
                if (BLL.TextHelper.NoHTML(label.Text).Length > 70)
                    label.Text = BLL.TextHelper.NoHTML(label.Text).Substring(0, 70) + "....";
                else
                    label.Text = BLL.TextHelper.NoHTML(label.Text); 
      
        }
    }
}