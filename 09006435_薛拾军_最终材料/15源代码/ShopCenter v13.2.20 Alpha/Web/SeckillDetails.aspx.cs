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
using System.Threading;
public partial class SeckillDetails : System.Web.UI.Page
{
    //private DateTime dtExam = DateTime.Parse("2012-12-22 20:42:00"); //定义时间到期时间        
    private DateTime dtExam = DateTime.Parse("2012-05-20 00:00:00");//定义时间到期时间  =      ("2012-1-29 00:00:00"); 
    //private double LimitDays = 0;
    //private double LimitHours = 0;
    //private double LimitMinutes = 0;
    //private double LimitSeconds = 0;


    BLL.ShopingCar car = new BLL.ShopingCar();

    DAL.SqlHelper helper=new DAL.SqlHelper();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["SeckillID"] == null || Session["LimitTime"] == null || 
                Session["SeckillID"] =="" || Session["LimitTime"] == "")
               {
                   Response.Redirect("Seckill.aspx"); 
               } 
            try
            {

                ddlImgList.DataSource = helper.GetdataSet("select * from Images where ItemID=" + int.Parse(Session["SeckillID"].ToString())  +" ");
                ddlImgList.DataBind();

                SqlDataReader dr = helper.GetDataReader("select top 1 IID,ProductID,AgoraPrice,Details,Days,Hours,Minutes,Seconds,LimitTime,Items.Name,ItemID,Images.SmallImg as Si,Images.BigImg as Bi,Alt from Items,Images  Where ItemID=IID and IID =" + int.Parse(Session["SeckillID"].ToString()) + "");
                while (dr.Read())
                {
                    //LimitDays = Double.Parse(dr["Days"].ToString());
                    //LimitHours = Double.Parse(dr["Hours"].ToString());
                    //LimitMinutes = Double.Parse(dr["Minutes"].ToString());
                    //LimitSeconds = Double.Parse(dr["Seconds"].ToString());
                    //if ((LimitDays < 0) || LimitHours < 0 || LimitMinutes  < 0 || LimitSeconds < 0)
                    //{
                    //    Response.Redirect("Clients.aspx");  
                    //}
                    imgSmallImg.ImageUrl = dr["Si"].ToString();
                    lbDetails.Text = dr["Details"].ToString();
                    dtExam =Convert.ToDateTime(dr["LimitTime"].ToString());
                }

            }
            catch { }
        }

    }

    protected void timerCD_Tick(object sender, EventArgs e)
    {  
        if (double.Parse(lbDays.Text) < 0 || double.Parse(lbHour.Text) < 0 || double.Parse(lbMinute.Text) < 0 || double.Parse(lbSecond.Text) < 0)
        //如果设置的时间已过
        {
            lbDays.Text = "活动结束！";
            lbHour.Text = "";
            lbMinute.Text = "";
            lbSecond.Text = "";
            this.timerCD.Enabled = false;    //将Timmer置为false
            imBtnKill.Enabled = false;
           
        }
        else
        {
            RefreshTime();                 //刷新时间 
        }

 
    }

    private void RefreshTime() //刷新时间的方法
    {
        //TimeSpan ts = this.dtExam - DateTime.Now; //时间差 
        TimeSpan ts = DateTime.Parse(Session["LimitTime"].ToString()) - DateTime.Now;
        this.lbDays.Text = ts.Days.ToString().PadLeft(2, '0'); 
        this.lbHour.Text = ts.Hours.ToString().PadLeft(2, '0');
        this.lbMinute.Text = ts.Minutes.ToString().PadLeft(2, '0');
        this.lbSecond.Text = ts.Seconds.ToString().PadLeft(2, '0');
        try
        {
            
            helper.ExcuteCommandInt("update  Items set LimitTime='"
                   + DateTime.Now.AddDays(int.Parse(lbHour.Text)).AddHours(int.Parse(lbHour.Text)).AddMinutes(int.Parse(lbMinute.Text)).AddSeconds(int.Parse(lbSecond.Text)) + "',Days="
                   + int.Parse(lbHour.Text) + ",Hours="
                   + int.Parse(lbHour.Text) + ",Minutes="
                   + int.Parse(lbMinute.Text) + ",Seconds="
                   + int.Parse(lbSecond.Text) + " Where IID="
                   + int.Parse(Session["SeckillID"].ToString()) + "");
        }
        catch(Exception ex)
        { 
            Response.Write(ex.Message);timerCD.Enabled = false;
        }
    }

    protected void imBtnKill_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["UID"] == null)
        {
            Response.Write("<script language=javascript> alert('请先登录!'); </script> ");
        } 
        else 
        {
            if (car.Buy(int.Parse(Session["SeckillID"].ToString()), int.Parse(Session["UID"].ToString())))
            {
                Response.Write("<script language=javascript> alert('购买成功!'); </script> ");

            }
            else {
                Response.Write("<script language=javascript> alert('购买失败!'); </script> ");
            }
        }
    }
}
