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

public partial class Hotmall : System.Web.UI.Page
{
    BLL.ShopingCar car = new BLL.ShopingCar();

    BLL.ItemCategory category = new BLL.ItemCategory();
    BLL.Items items = new BLL.Items();
    BLL.Products products = new BLL.Products();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //helper.GetdataSet("select * from Products where CategoryID=2");
            ddlClassMenu.DataSource = products.GetProductByCID(6);
            ddlClassMenu.DataBind();
            Bind(int.Parse(lbPID.Text));
        }
    }
    protected void ddlClassMenu_ItemCommand(object source, DataListCommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "xuan":
                lbPID.Text = e.CommandArgument.ToString();
                Bind(int.Parse(lbPID.Text));
                break;
        }
    }
    protected void ddlWomen_ItemCommand(object source, DataListCommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "cha":
                if (items.BuyTimesAdd(int.Parse(e.CommandArgument.ToString())))
                {
                    Response.Redirect("HotmallDetails.aspx?ProductID=" + e.CommandArgument.ToString() + "");
                }
                break;
            case "buy":
                if (Session["UID"] == null || Session["UID"] == "")
                {
                    Response.Write("<script language=javascript> alert('请先登录!'); </script> ");
                }
                else
                {
                    if (car.Buy(int.Parse(e.CommandArgument.ToString()), int.Parse(Session["UID"].ToString())))
                    {
                        items.ViewTimesAdd(int.Parse(e.CommandArgument.ToString()));
                        Response.Write("<script language=javascript> alert('购买一件成功！请到个人中心继续付款！'); </script> ");

                    }
                    else
                    {
                        Response.Write("<script language=javascript> alert('购买失败!'); </script> ");
                    }
                }
                break;
        }
    }
    protected void lbtnAll_Click(object sender, EventArgs e)
    {
        lbPID.Text = "-1";
        Bind(int.Parse(lbPID.Text));
    }
    public void Bind(int intPID)
    {
        SqlDataAdapter da;
        switch (intPID)
        {
            case -1:
                da = items.GetItemByAllWithALLImg2(6);
                break;
            default:
                da = items.GetItemAllWithALLImgByPID2(intPID, 6);
                break;
        }
        DataSet ds = new DataSet();
        da.Fill(ds, "ItemsList");

        PagedDataSource ps = new PagedDataSource();        //生成PagedDataSource的实例
        ps.DataSource = ds.Tables[0].DefaultView;
        ps.AllowPaging = true;//启用分页
        ps.PageSize = 9;//当页显示的项数
        this.lbpageCount.Text = ps.PageCount.ToString();//总页数

        ps.CurrentPageIndex = Convert.ToInt32(lbcurrentPage.Text) - 1;//获取当前页的页码

        if (ps.IsFirstPage)//第一页
        {
            this.lbFirst.Enabled = false;//不显示第一页按钮
            this.lbPrev.Enabled = false;//不显示上一页按钮
        }
        else
        {
            this.lbFirst.Enabled = true;
            this.lbPrev.Enabled = true;
        }
        if (ps.IsLastPage)//最后一页
        {
            this.lbNext.Enabled = false;//不显示下一页按钮
            this.lbLast.Enabled = false;//不显示末页按钮
        }
        else
        {
            this.lbNext.Enabled = true;
            this.lbLast.Enabled = true;
        }

        //设置数据源的关键字段
        //this.ddlWomen.DataKeyField = "AID";
        this.ddlWomen.DataSource = ps;
        //if (int.Parse(lbpageCount.Text) == 0) { ddlWomen.FindControl(); }
        this.ddlWomen.DataBind();

    }
    protected void LinkButton_Click(object sender, EventArgs e)
    {
        if (((LinkButton)sender).CommandName == "first")
        { this.lbcurrentPage.Text = "1"; }
        if (((LinkButton)sender).CommandName == "prev")
        { this.lbcurrentPage.Text = (Convert.ToInt32(this.lbcurrentPage.Text) - 1).ToString(); }
        if (((LinkButton)sender).CommandName == "next")
        { this.lbcurrentPage.Text = (Convert.ToInt32(this.lbcurrentPage.Text) + 1).ToString(); }
        if (((LinkButton)sender).CommandName == "last")
        { this.lbcurrentPage.Text = this.lbpageCount.Text; }
        Bind(int.Parse(lbPID.Text));
    }
}
