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

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) { }
    }
    BLL.User USER = new BLL.User(); 
    protected void lbtnLogin_Click(object sender, EventArgs e)
    {
        panelCheckCode.Visible = false;
        panelLoginTime.Visible = false;
        panelPwd.Visible = false;

        try//读取登录次数
        {
            HttpCookie cookieLogin = Request.Cookies["LoginTimes"];
            lbCountLogin.Text = cookieLogin.Values["Count"].ToString();
        }
        catch
        { lbCountLogin.Text = "1"; }

        if (int.Parse(lbCountLogin.Text) <= 3)//三次登录失败
        { 
            HttpCookie cookie = Request.Cookies["CheckCode"];
            if (cookie.Value == this.txtCheckCode.Text.ToString())
            {
                if (USER.CheckUser(txtUserName.Text.ToString(), txtPwd.Text.ToString()) == BLL.User.myLoginState.LOGINSUSCCESS)
                {
                    Response.Write("<script language='javascript'> alert( 'Success！'); </script> ");
                    Response.Redirect("Member/Default.aspx");
                }
                else
                {
                    Response.Write("<script language=javascript> alert( '帐号或者密码错误！（第"+lbCountLogin.Text+"次错误！）'); </script> ");
                    panelPwd.Visible = true;
                    try//失败次数自增1
                    {
                        System.Web.HttpCookie cookieLogin = new System.Web.HttpCookie("LoginTimes");
                        cookieLogin.Values.Add("Count", (int.Parse(lbCountLogin.Text) + 1).ToString());
                        cookieLogin.Expires.AddHours(4);
                        System.Web.HttpContext.Current.Response.AppendCookie(cookieLogin);
                    }
                    catch { }
                } 
            }
            else//Response.Write("<script language=javascript> alert( '验证码错误！'); </script> "); 
            { panelCheckCode.Visible = true;  }
        }
        else 
        {
            panelLoginTime.Visible = true;
        }
    }
}
