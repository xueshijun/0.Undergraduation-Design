using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["KeyWords"] = TextBox1.Text;
        if (Session["KeyWords"] == null ? false : true)
        {  
            Response.Redirect("Results.aspx");
        }
    }
}