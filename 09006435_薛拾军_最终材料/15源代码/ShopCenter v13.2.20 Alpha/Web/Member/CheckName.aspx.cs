using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class CheckName : System.Web.UI.Page
{

    BLL.User user = new BLL.User();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string userName = Request.QueryString["userName"].ToString(); 
            if (userName.Trim() == "")
            { Response.Write("<font color='red'>不可为空！</font>"); }
            else if (user.CheckName(userName))
            {
                Response.Write("<font color='red'>用户名正确！</font>");
            }
            else
            {
                Response.Write("<font color=green>用户名错误！</font>");
            }
        }
    }  
} 
