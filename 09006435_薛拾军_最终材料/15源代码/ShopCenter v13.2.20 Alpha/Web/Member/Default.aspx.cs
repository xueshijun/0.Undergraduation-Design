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

public partial class Member_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                HttpCookie cookie = Request.Cookies["UserInfo"];
                Session["Name"] = cookie.Values["name"].ToString();
                Session["UID"] = cookie.Values["UID"].ToString();
            }

            
        }
        catch
        {
            if (Session["UID"] == null || Session["Name"] == null) { Response.Redirect("../Login.aspx"); }
        }
    }
    /// <summary>
    /// 退出系统
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void lbtnBack_Click(object sender, EventArgs e)
    {

    }
    protected void lbtnLock_Click(object sender, EventArgs e)
    {
        Response.Write("Hellow");
    }
}
