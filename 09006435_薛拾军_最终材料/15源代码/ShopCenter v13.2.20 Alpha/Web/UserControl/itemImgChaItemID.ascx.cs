using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_itemImgChaItemID : System.Web.UI.UserControl
{
    BLL.PicturesItem picture = new BLL.PicturesItem();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) {
            gvDetails.DataSource = picture.GetImageWithItems();
            gvDetails.DataBind();
            
        }
    }
    protected void btnModify_Click(object sender, EventArgs e)
    {

    }
    protected void gvDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvDetails.PageIndex = e.NewPageIndex; 
        gvDetails.DataSource = picture.GetImageWithItems();
        gvDetails.DataBind(); 
    }
    protected void gvDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //BLL.PicturesItem pic;
        switch (e.CommandName) {

            case "shanchu": 
                break;
            case "Modify":
               //pic = picture.GetSingleItemPic();
                break;
        }
    }
}