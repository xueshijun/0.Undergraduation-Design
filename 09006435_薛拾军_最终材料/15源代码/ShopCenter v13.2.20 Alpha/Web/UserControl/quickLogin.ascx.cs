using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_quickLogin : System.Web.UI.UserControl
{
    BLL.User USER = new BLL.User(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null || Session["UID"] == null) { 
           
        } else { }
    }
    protected void lbtnLogin_Click(object sender, EventArgs e)
    {
          //HttpCookie cookie = Request.Cookies["CheckCode"];
          //if (cookie.Value == this.txtCheckCode.Text.ToString())
          //{
              if (USER.CheckUser(txtUserName.Text.ToString(), txtPwd.Text.ToString()) == BLL.User.myLoginState.LOGINSUSCCESS)
              {
                  //Response.Write("<script language='javascript'> alert( 'Success！'); </script> ");
                  //Response.Redirect("Member/Default.aspx");
              }
          //}
    }
}