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

public partial class UserControl_usertag : System.Web.UI.UserControl
{
    BLL.ShopingCar car = new BLL.ShopingCar(); 
    BLL.User USER = new BLL.User(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
            if (Session["Name"] != null || Session["UID"] != null)
            {
                panelLoginFailed.Visible = false;
                panelLoginSuccess.Visible = true;
                lbCarCount.Text = car.GetNoPayCounts(
                    int.Parse(Session["UID"].ToString())).ToString();
            }
            else {
                panelLoginFailed.Visible = true;
                panelLoginSuccess.Visible = false;
            }
        //}
    }
        //BLL.User user = new BLL.User();
    protected void lbtn_Click(object sender, EventArgs e)
    {
        //switch(user.CheckUser())
        //{
        //    case BLL.User.myLoginState.LOGINSUSCCESS:
        //        break;
        //    case BLL.User.myLoginState.UNLOGIN:
        //        break;
        //    case BLL.User.myLoginState.LOGINFAILED:
        //        break;
        //    case BLL.User.myLoginState.LOGINED:
        //        break;
        //}

    }
    //protected void lbtnLogin_Click(object sender, EventArgs e)
    //{
    //    if (USER.CheckUser(txtUserName.Text.ToString(), txtPwd.Text.ToString()) == BLL.User.myLoginState.LOGINSUSCCESS)
    //    {
    //        panelLoginFailed.Visible = false;
    //        panelLoginSuccess.Visible = true;
    //        //Response.Write("<script language='javascript'> alert( 'Success！'); </script> ");
    //        //Response.Redirect("Member/Default.aspx");
    //    }
    //}
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        if (Session["UID"] != null)
        {
            lbCarCount.Text = car.GetNoPayCounts(int.Parse(Session["UID"].ToString())).ToString();
        }
        else
        {
            lbCarCount.Text = "0";
        }
    }
  
}