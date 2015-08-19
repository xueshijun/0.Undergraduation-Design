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
using System.Data.SqlClient;

public partial class Seckill : System.Web.UI.Page
{
    BLL.Items item = new BLL.Items();
    protected void Page_Load(object sender, EventArgs e)
    {
        ddlWomen.DataSource = item.getSeckillItemList();
        ddlWomen.DataBind();
    } 

    protected void ddlWomen_ItemCommand(object source, DataListCommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "miao":
                Entity.Items i = item.getSeckillItem(int.Parse(e.CommandArgument.ToString()));
                Session["SeckillID"] = e.CommandArgument.ToString();
                
                Session["LimitTime"] = DateTime.Now
                    .AddDays(double.Parse(i.getDays()))
                    .AddHours(double.Parse(i.getHours()))
                    .AddMinutes(double.Parse(i.getMinutes()))
                    .AddSeconds(double.Parse(i.getSeconds())).ToString();
                               
                Response.Redirect("SeckillDetails.aspx");//?SeckillID=" + int.Parse(e.CommandArgument.ToString()) + "
                break;
        }
    }
}
