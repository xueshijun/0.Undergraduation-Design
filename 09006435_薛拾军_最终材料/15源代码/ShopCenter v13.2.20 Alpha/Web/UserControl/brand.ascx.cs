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
using System.Xml.Linq;
 
 
public partial class UserControl_brand : System.Web.UI.UserControl
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        DAL.SqlHelper sqlHelper=new DAL.SqlHelper();
        if (!IsPostBack)
        {
            DataList1.DataSource =sqlHelper.GetdataSet("select * from Brand");
            DataList1.DataBind();
        } 
    }
}
