using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admins_ItemsAddForm : System.Web.UI.Page
{

    BLL.Items items = new BLL.Items();
    BLL.Brands brand = new BLL.Brands();
    BLL.Products products = new BLL.Products();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        { 
            ddlBrandID.DataSource = brand.GetBrands();
            ddlBrandID.DataTextField = "BrandName";
            ddlBrandID.DataValueField = "BID";
            ddlBrandID.DataBind();

            ddlProductID.DataSource = products.GetProduct();
            ddlProductID.DataValueField = "PID";
            ddlProductID.DataTextField = "Name";
            ddlProductID.DataBind();

        }
    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        Entity.Items item = new Entity.Items();
        item.setProductID(int.Parse(ddlProductID.SelectedValue));
        item.setBrandID(int.Parse(ddlBrandID.SelectedValue));
        item.setName(txtName.Text.Trim());
        item.setMemberPrice(txtMemberPrice.Text.Trim());
        item.setAgoraPrice(txtAgoraPrice.Text.Trim());
        item.setVipPrice(txtVipPrice.Text.Trim());
        item.setSeckillPrice(txtSeckillPrice.Text.Trim());
        item.setArea(txtArea.Text.Trim());
        item.setDetails(Textarea1.Value.Trim());
        item.setDays( txtDays.Text.Trim());
        item.setHours(txtHours.Text.Trim());
        item.setMinutes(txtMinutes.Text.Trim());
        item.setSeconds(txtSeconds.Text.Trim());
        if (items.AddItemsInfo(item))
        {
            panelSuccess.Visible = true;
            lbSuccess.Text = "新增成功！";
            txtAgoraPrice.Text = txtArea.Text = txtDays.Text = txtHours.Text = txtMemberPrice.Text = txtMinutes.Text = txtName.Text = txtSeckillPrice.Text = txtSeconds.Text = txtVipPrice.Text = Textarea1.Value = "";
        }
        else
        {
            panelError.Visible = true;
            lbError.Text = "新增失败";
        } 
    }
    //DAL.SqlHelper helper = new DAL.SqlHelper();
    //public bool AddItems(string Name, string AgoraPrice, string MemberPrice, string VipPrice, string SeckillPrice, string Area, string Details, string Days, string Hours, string Minutes, string Seconds)
    //{
    //    //ProductID,BrandID,Name,AgoraPrice,MemberPrice,VipPrice,SeckillPrice,Area,Details,IsSecondKill,LimitTime
    //    if (helper.ExcuteCommandInt("insert into Items(Name,AgoraPrice,MemberPrice,VipPrice,SeckillPrice,Area,Details,Days,Hours,Minutes,Seconds) values ('"
    //        + Name + "','" + AgoraPrice + "','" + MemberPrice + "','" + VipPrice + "','" + SeckillPrice + "','" + Area + "','" + Details + "','" + Days + "','" + Hours + "','" + Minutes + "','" + Seconds + "')") > 0)
    //        return true;
    //    else
    //        return false;
    //}
    protected void btnCopy_Click(object sender, EventArgs e)
    {
        txtMemberPrice.Text = txtSeckillPrice.Text = txtVipPrice.Text = txtAgoraPrice.Text;
    } 
}