using System;
using System.Collections;
using System.Configuration;
using System.Data;
 
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts; 
public partial class UserControl_register : System.Web.UI.UserControl
{
    BLL.User user = new BLL.User();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        if (UserName.Text == String.Empty || UserEmail.Text == String.Empty || UserPassOne.Text == String.Empty || UserPhone.Text == String.Empty || UserPhonetele.Text == String.Empty || UserAdress.Text == String.Empty) 
        {
            panelAttention.Visible = true;
            lbAttention.Text = "该字段不可为空！";            
        }
        else
        {
            if (user.CheckName(UserName.Text))
            {
                panelAttention.Visible = true;
                lbAttention.Text = "该用户已经存在！";
            }
            else
            {
                paneInfo.Visible = true;
                lbInfo.Text = "该用户名可以使用!";
                if (user.InsertUser(UserName.Text, UserPassOne.Text, UserEmail.Text, UserPhone.Text, UserPhonetele.Text, UserAdress.Text, BLL.SEO.GetClientIP()))
                {
                    panelSuccess.Visible = true;
                    lbSuccess.Text = " 新增用户成功!";
                    UserName.Text = UserPassOne.Text = UserEmail.Text = UserPhone.Text = UserPhonetele.Text = UserAdress.Text = "";
                }
            }
        }
    }
    protected void EntryButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}
