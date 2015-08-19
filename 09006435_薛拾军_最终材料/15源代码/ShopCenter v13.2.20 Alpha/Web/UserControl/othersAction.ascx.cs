using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_othersAction : System.Web.UI.UserControl
{ 
    BLL.ShopingCar myCar = new BLL.ShopingCar();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlOtherAction.DataSource = myCar.GetTopTenShopCar();
            ddlOtherAction.DataBind(); 
        }
    }
}