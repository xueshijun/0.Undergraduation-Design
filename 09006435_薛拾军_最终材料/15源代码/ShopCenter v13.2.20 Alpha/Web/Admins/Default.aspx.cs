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

public partial class Admins_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    BLL.Admins admin = new BLL.Admins();
    protected void lbtnLogin_Click(object sender, EventArgs e)
    {
        if (admin.LoginOnCheck(new Entity.Admins(txtName.Text.Trim(), txtPass.Text.Trim())))
        //if (admin.LoginOnCheck(txtName.Text.Trim(), txtPass.Text.Trim()))
        {
            Entity.Admins ad = admin.LoginOn(new Entity.Admins(txtName.Text.Trim(), txtPass.Text.Trim()));
            Session["AdminID"] = ad.getAdminID();
            Response.Redirect("Index.aspx");
        }
        else {
            panelError.Visible = true;
            lbError.Text = "账号或密码出错！";
        }
    }
}
