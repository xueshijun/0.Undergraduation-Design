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

public partial class Member_CheckPwd : System.Web.UI.Page
{ 

    BLL.User user = new BLL.User();
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                string userPwd = Request["userPwd"].ToString();
                if (userPwd.Trim().ToLower()== "")
                {
                    Response.Write("<font color='red'>不可为空！</font>");
                }

                else if (user.CheckPwd(int.Parse(Session["UID"].ToString()),userPwd))
                { 
                    Response.Write("<font color='red'>正确！</font>");
                }
                else//UID,Name,Pass,Email,Phone,Tel,Address,IP,VIP.VName,VImg
                {
                    Response.Write("<font color='green'>错误！</font>");
                }
            }
            catch { Response.Write("<font color='red'>非法操作！</font>"); }
            
        }
    }
}
