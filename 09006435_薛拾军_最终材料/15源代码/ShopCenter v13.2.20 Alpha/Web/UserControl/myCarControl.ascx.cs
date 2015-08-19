using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_myCarControl : System.Web.UI.UserControl
{
    BLL.ShopingCar myCar = new BLL.ShopingCar();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{ 
            if (Session["UID"] != null)
            //{
            //    Response.Redirect("Login.aspx");
            //} 
            {
                gvCarList.DataSource = myCar.GetUnPayAndPayed(int.Parse(Session["UID"].ToString()));
                gvCarList.DataBind();
            }
        //} 
    }
   
    protected void gvCarList_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        switch (e.CommandName) 
        {
            case "pay":
                if (myCar.Pay(int.Parse(e.CommandArgument.ToString()),int.Parse(Session["UID"].ToString())))
                {
                    panelSuccess.Visible = true;
                    lbSuccess.Text = "支付成功！";
                    Bind();
                }
                else 
                {
                    panelError.Visible = true;
                    lbError.Text = "支付失败！";
                }
               
                break;
            case "remove"://每次移除减一
                
                //  (int CarID, int ItemID, int UserID)
                if (myCar.RemoveItem(int.Parse(e.CommandArgument.ToString()), int.Parse(Session["UID"].ToString())))
                {
                    panelSuccess.Visible = true;
                    lbSuccess.Text = "移除成功！";
                    Bind();
                }
                else
                {
                    panelError.Visible = true;
                    lbError.Text = "移除失败！";
                }
                break; 
        }
    }
    public void Bind() {
        //switch (ddlChoice.SelectedItem.Value)
        //{
        //    case "0"://全部
        //        gvCarList.DataSource = myCar.GetUnPayAndPayed(int.Parse(Session["UID"].ToString()));
        //        gvCarList.DataBind();
        //        break;
        //    case "1"://已付款
        //        gvCarList.DataSource = myCar.GetShopCarPayed(int.Parse(Session["UID"].ToString()));
        //        gvCarList.DataBind();
        //        break;
        //    case "2"://待付款
        //        gvCarList.DataSource = myCar.GetShopCarUnPay(int.Parse(Session["UID"].ToString()));
        //        gvCarList.DataBind();
        //        break;
        //    default:
        //        gvCarList.DataSource = myCar.GetUnPayAndPayed(int.Parse(Session["UID"].ToString()));
        //        gvCarList.DataBind();
        //        break;
        //}
        gvCarList.DataSource = myCar.GetUnPayAndPayed(int.Parse(Session["UID"].ToString()));
        gvCarList.DataBind();
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        try
        {
            if (Session["UID"] != null)
            {
                gvCarList.DataSource = myCar.GetUnPayAndPayed(int.Parse(Session["UID"].ToString()));
                gvCarList.DataBind();
            }
        }
        catch { }
    }
}