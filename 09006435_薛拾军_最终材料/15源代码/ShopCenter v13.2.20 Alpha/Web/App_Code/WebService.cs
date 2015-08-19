using System;
using System.Collections.Generic; 
using System.Web;
using System.Web.Services;

using WService;


/// <summary>
///WebService 的摘要说明
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
//若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消对下行的注释。 
// [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService {
      
    public WebService () {

        //如果使用设计的组件，请取消注释以下行 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld() {
        return "Hello World";
    }
    #region 管理员
     [WebMethod(Description = "获取所有管理员的信息")]
    public string[] getAllAdminsInfo() {
        return WService.Admins.getAllAdminInfo().ToArray();
    }
     
     [WebMethod(Description = "根据ID获取管理员的信息")]
     public string[] getAllAdminsInfoByID(int AdminID)
     {
         return WService.Admins.getAllAdminInfoById(AdminID).ToArray();
     }
    #endregion


     #region 用户
     [WebMethod(Description = "获取登录用户的信息")]
    public string[] getLoginInfo(string strUser,string strPass) {
        return WService.Users.getLoginInfo(strUser, strPass).ToArray();
    } 
     #endregion


     #region  购物车
     [WebMethod(Description = "获取用户购物车的信息")]
    public string[] getShopingCarInfo(int userID)
    {
        return WService.ShopingCar.getUnPayAndPayedInfo(userID).ToArray();
    }
     #endregion



     #region 商品信息
     [WebMethod(Description = "获取指定商品的综合信息")]
     public string[] getItemsWithNoImgByItemID(int itemID)
     {
         return WService.Items.getItemsWithNoImgByItemID(itemID).ToArray();
     }

     [WebMethod(Description = "获取指定商品的综合信息根据ItemID")]
     public string[] getItemsWithNoImg()
     {
         return WService.Items.getItemsWithNoImg().ToArray();
     }

    
    #endregion



    #region 图片信息
    [WebMethod(Description = "获取所有图片信息和对应的ID")]
    public string[] getImages() {
        return WService.ItemImages.getImage().ToArray();
    }

    [WebMethod(Description = "根据商品ID获取所有图片信息和对应的ID")]
    public string [] getImageByItemID(int ItemID)
    {
        return WService.ItemImages.getImageByItemID(ItemID).ToArray();
    }  
    #endregion



    #region 商品分类主题
     [WebMethod(Description = "取获对应ID的商品分类主题")]
    public string[]  getProductsById(int PID)  {
        return WService.Products.getProductsById(PID).ToArray();
     } 
    #endregion


    #region 商品分类
    [WebMethod(Description = "根据ID获取商品分类")]
    public string[] getCategoryById(int CID) {
        return WService.Category.getCategoryById(CID).ToArray();
    }
    [WebMethod(Description = "获取商品分类列表")]
    public string[] getCategory()
    {
        return WService.Category.getCategory().ToArray();
    }
    #endregion

    #region 登录日志
    [WebMethod(Description = "新增一条登录日志")]
    public string[] addLoginLog( string LUserID,string LLocationX,string LLocationY,string LDate,string LisHidden){
        return WService.LogLogin.addLoginLog(LUserID,LLocationX,LLocationY,LDate,LisHidden).ToArray();
    } 



    [WebMethod(Description = "前十条登录日志")]
    public string[] getLastTenLogLogin(){
        return WService.LogLogin.getLastTenLogLogin().ToArray();
    }

    [WebMethod(Description = "登录日志")]
    public string[] getLogLogin()
    {
        return WService.LogLogin.getLogLogin().ToArray();
    } 

    [WebMethod(Description = "根据用户ID获取个人前十个登录日志")]
    public string[] getLastTenLogLoginByUserID(int userID)
    {
        return WService.LogLogin.getLastTenLogLoginByUserID(userID).ToArray();
    }

    [WebMethod(Description = "根据用户ID获取个人所有登录日志")]
    public string[] getLogLoginByUserID(int userID)
    {
        return WService.LogLogin.getLogLoginByUserID(userID).ToArray();
    }    

    #endregion


    #region  购物日志 

    #endregion


    #region 浏览日志 

    [WebMethod(Description = "新增一条浏览日志")]
    public string[] addViewLog(string VItemID, string VUserID, string VLocationX,string VLocationY, string VDate, string VisHidden)
    {
        return WService.LogView.addViewLog(VItemID,VUserID,VLocationX,VLocationY,VDate,VisHidden).ToArray();
    } 
    [WebMethod(Description = "获取商品前十个浏览日志")]
    public string[] getLastTenLogView()
    {
        return WService.LogView.getLastTenLogView().ToArray(); 
    } 
    [WebMethod(Description = "获取商品浏览日志")]
    public string[] getLogView()
    {
        return WService.LogView.getLogView().ToArray();
    } 
    [WebMethod(Description = "获取指定商品的前十个浏览日志")]
    public string[] getLastTenLogViewByItemID(int ItemID)
    {
        return WService.LogView.getLastTenLogViewByItemID(ItemID).ToArray();
    } 
    [WebMethod(Description = "获取指定商品的所有浏览日志")]
    public string[] getLogViewByItemID(int ItemID)
    {
        return WService.LogView.getLogViewByItemID(ItemID).ToArray();
    }
    #endregion
}
