using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Data.SqlClient;


using System.Data.Sql;
namespace BLL
{
    //Items:IID,ProductID,BrandID,Name
    //
    //Products:PID,CategoryID,Name
    //Category:CID,CName

    //Brand:BID,BrandName
    //
    //where BID=BrandID and CategoryID=CID and PID= 
    public  class Subject
    {
        DAL.SqlHelper helper = new DAL.SqlHelper();

        #region
        //public SqlDataReader getItemInfo() {
        //    string sql =
        //    "select "
        //    + "Products.PID,Products.CategoryID,Products.Name,"
        //    + "Category.CID,Category.CName,"
        //    + "Items.IID,Items.ProductID,Items.BrandID,Items.Name,"
        //    + "Brand.BID,Brand.BrandName "
        //    + "from  Category,Items,Products,Brand "
        //    + "where "
        //    + "Products.CategoryID=Category.CID and " 
        //    + "Products.PID=Items.ProductID and "
        //    + "Items.BrandID=Brand.BID"
        //    +"" ;
        //   return helper.GetDataReader(sql);
        //}








#endregion
       
        
        
        
        
        
        
        
        
        //Items:IID,ProductID,BrandID,Name 
        //Products:PID,CategoryID,Name
        //Category:CID,CName 
        //Brand:BID,BrandName
        public SqlDataReader getItemSimpleInfo()
        {
            string sql =
            "select distinct " 
            + "Items.IID,Items.ProductID,Items.Name,"
            + "Products.PID,Products.CategoryID,Products.Name,"
            + "Category.CID,Category.CName "
            + "from  Category,Items,Products,Brand "
            + "where "
            + "Products.CategoryID=Category.CID and "
            + "Products.PID=Items.ProductID";
            return helper.GetDataReader(sql);
        }

        public SqlDataReader getItemJingDongInfo()
        {
            string sql = "select JID,JNum,JTitle,JUrl,JCategory,JPrice from JingDong";
            return helper.GetDataReader(sql);
        }
        public SqlDataReader getItemJingDongInfoByID(int JID)
        {
            string sql = "select JID,JNum,JTitle,JUrl,JCategory,JPrice from JingDong where JID=" + JID + "";
            return helper.GetDataReader(sql);
        }

        //public Entity.Subject getInfo(int id) {
        //    Entity.Subject itemInfo=new Entity.Subject(); 
        //    return itemInfo; 
        //}
    }
}
