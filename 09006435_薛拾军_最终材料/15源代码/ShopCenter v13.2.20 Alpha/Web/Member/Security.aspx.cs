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

public partial class Member_Security : System.Web.UI.Page
{
    BLL.User user = new BLL.User();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lbUID.Text = Session["UID"].ToString(); 
             txtOldPwd.Text = "请输入您原先密码";
             txtNewPwd.Text = "";
             txtConfirm.Text = ""; 
        }     
    }
    protected void btnModify_Click(object sender, EventArgs e)
    {
        if (user.CheckPwd(int.Parse(Session["UID"].ToString()), txtOldPwd.Text)) 
        {
            if (user.UpdateUser(int.Parse(Session["UID"].ToString()), txtConfirm.Text.ToLower())>0)
            {
                lbMessage.Text = "修改成功！";
            }
            else 
            {
                lbMessage.Text = "修改失败！";
            }
        }
    }
}
