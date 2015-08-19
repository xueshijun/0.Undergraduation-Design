using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManDetails : System.Web.UI.Page
{
    DAL.SqlHelper helper = new DAL.SqlHelper();
    public int ItemID;
    BLL.Items items = new BLL.Items();
    BLL.PicturesItem picture = new BLL.PicturesItem();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
            ItemID = int.Parse(Request["ProductID"].ToString());
            //Label1.Text = ; helper.GetdataSet("select TOP 1 IID,Name,AgoraPrice,MemberPrice,VipPrice,Area,Fresh,ClickTimes,Sale,Details,ViewTimes,BuyTimes,Images.ItemID,Images.BigImg,Images.SmallImg,Images.Alt from Items,Images Where ItemID=IID  and ItemID=" + ItemID + "");
            formViewDetails.DataSource = items.GetTopOneDetails(ItemID);
            formViewDetails.DataBind();

            DataList ddlImgList = (DataList)formViewDetails.FindControl("ddlImgList");
            ddlImgList.DataSource = picture.GetImgDetails(ItemID);
            ddlImgList.DataBind();
            }
            catch { Response.Redirect("Man.aspx"); }
        }
    } 
}