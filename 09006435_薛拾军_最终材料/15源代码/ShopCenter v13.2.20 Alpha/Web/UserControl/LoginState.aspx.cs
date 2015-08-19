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

public partial class UserControl_LoginState : System.Web.UI.Page
{ 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //HttpCookie cookie = new HttpCookie("MyUserUrl");
            //cookie.Values.Add("NowUrl", Request.Url.ToString());
            //cookie.Expires.AddHours(12);
            //Response.AppendCookie(cookie);
            if (Session["UID"] == null)
            {
                panelSelect.Visible = true;
                panelLogined.Visible = false;
                panelLoging.Visible = false;
            }
            else
            {
                panelSelect.Visible = false;
                panelLoging.Visible = false;
                panelLogined.Visible = true;

                HttpCookie cookie = Request.Cookies["UserInfo"];
                lbNickName.Text = cookie.Values["name"].ToString();
                Session["UID"] = cookie.Values["UID"].ToString();
                Session["Name"] = cookie.Values["name"].ToString();
                imgHeadImg.ImageUrl = "~/" + cookie.Values["vipImg"].ToString();
            }

         
        }
    }

    BLL.User USER = new BLL.User();
    Entity.UserInfo USERINFO = new Entity.UserInfo();

    //第一板块—选择登录/注册
    #region   
    //切换至登录页面 
    protected void lbtnLogining_Click(object sender, EventArgs e)
    { 
        panelLoging.Visible = true;
        panelSelect.Visible = false;
        panelLogined.Visible = false;
    } 
    /// <summary>
    /// 切换至注册界面
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void lbtnReg_Click(object sender, EventArgs e)
    { 
        //Response.Redirect(Server.MapPath("../Index.aspx"));
        Response.Write("<script language=javascript> window.open( '../Register.aspx'); </script> ");
    }
    #endregion
  
   //第二板块—登录
    #region
    /// <summary>
    /// 登录成功/失败
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void lbtnLogin_Click(object sender, EventArgs e)
    {

        if (USER.CheckUser(txtName.Text.ToString(), txtPwd.Text.ToString()) == BLL.User.myLoginState.LOGINSUSCCESS)
        {
            panelSelect.Visible = false;
            panelLoging.Visible = false;
            panelLogined.Visible = true;

            HttpCookie cookie = Request.Cookies["UserInfo"];
            lbNickName.Text = cookie.Values["name"].ToString();
            Session["UID"] = cookie.Values["UID"].ToString();
            Session["Name"] = cookie.Values["name"].ToString();
            imgHeadImg.ImageUrl = "~/"+cookie.Values["vipImg"].ToString(); 
            
        }
        else
        {  
            Response.Write("<script language=javascript> alert( '帐号或者密码错误！'); </script> ");
        }
    }
    /// <summary>
    /// 返回
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param> 
    protected void lbtnBack_Click(object sender, EventArgs e)
    {
        panelSelect.Visible = true;
        panelLogined.Visible = false;
        panelLoging.Visible = false;
    }
    #endregion

    //第三板块—成功
    #region
    /// <summary>
    /// 退出登陆
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void lbtnCancle_Click(object sender, EventArgs e)
    { 
        Session["UID"] = null;
        Session["Name"] = null;
        Session.Abandon();
        panelLoging.Visible = true;
        panelSelect.Visible = false;
        panelLogined.Visible = false;
    }
    /// <summary>
    /// 用户中心
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void lbtnUserHome_Click(object sender, EventArgs e)
    {
        //Response.Redirect("");
        Response.Write("<script language=javascript> window.open( '../Member/Default.aspx'); </script> ");
    }
    #endregion

    //扫描游客登录离开时间
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        //try
        //{
        //    if (Session["UserID"] == null)
        //    {

        //        Panel1.Visible = true;
        //        Panel2.Visible = false; 
        //    }
        //    else
        //    {
        //        if (helper.ExcuteCommandInt("update [User] set IsOnLine='false',LastOutDate='" + DateTime.Now.ToString() + "' where UserID=" + int.Parse(Session["UserID"].ToString()) + "") > 0)//用户下线
        //        {
        //            DataRowView drv = helper.GetTableValue("select * from [User] where UserID=" + int.Parse(Session["UserID"].ToString()) + "");
        //            lbNickName.Text = drv["NickName"].ToString();
        //            imgHeadImg.ImageUrl = drv["HeadImg"].ToString();
        //            Panel1.Visible = false;
        //            Panel2.Visible = true;
        //            //Response.Write("<script>alert('已经登陆" + Session["email"].ToString() + "');</script>");
        //        }
        //    }
        //}
        //catch
        //{ 
        //    Panel1.Visible = true;
        //    Panel2.Visible = false;

        //    //helper.ExCommand("update [User] set IsOnLine='false',LastOutDate='" + DateTime.Now.ToString() + "' where UserID=" + int.Parse(Session["UserID"].ToString()) + "");//用户下线 
        //}
        //Thread.Sleep(6000);
    }

}








//用户登录
//protected void lbtnLogin_Click(object sender, EventArgs e)
//{
//if (helper.GetdataSet("select * from [User] where Email='" + method.SafeReplace(txtEmail.Text.Trim()) + "' and Pwd='" + method.SafeReplace(txtPwd.Text) + "' and UserState>1").Tables[0].Rows.Count > 0)
//{
//        DataRowView drv = helper.GetTableValue("select * from [User] where Email='" + method.SafeReplace(txtEmail.Text.Trim()) + "' and Pwd='" + method.SafeReplace(txtPwd.Text) + "'");
//        lbNickName.Text = drv["NickName"].ToString();
//        imgHeadImg.ImageUrl = drv["HeadImg"].ToString();
//        Session["UserID"] = drv["UserID"].ToString();
//        Session["email"] = drv["Email"].ToString();
//        Session["pass"] = drv["Pwd"].ToString();
//        Session["GroupID"] = drv["GroupID"].ToString();

//        if (helper.ExcuteCommandInt("update [User] set IsOnLine='false',LastLoginDate='" + DateTime.Now.ToString() + "',LastOutDate='" + DateTime.Now.ToString() + "' where UserID=" + int.Parse(Session["UserID"].ToString()) + "") > 0)//用户最后在线时间
//        {
//            Panel1.Visible = false;
//            Panel2.Visible = true;
//            //HttpCookie cookie1 = new HttpCookie("Login");
//            //cookie1.Values.Add("UserID", drv["UserID"].ToString());
//            //cookie1.Values.Add("email", drv["Email"].ToString());
//            //cookie1.Values.Add("pass", drv["Pwd"].ToString());
//            //cookie1.Values.Add("GroupID", drv["GroupID"].ToString());
//            //cookie1.Expires.AddHours(12);
//            //Response.AppendCookie(cookie1);
//        }
//}
//else
//{
//    Panel1.Visible = true;
//    Panel2.Visible = false;     
//}
//}
//用户注册
//