using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;


using System.Data.SqlClient;
namespace BLL
{
    public class ItemCategory
    {
        

        DAL.SqlHelper helper = new DAL.SqlHelper();

         
        //获取列表
        public DataSet GetCategory()
        {
            return helper.GetdataSet("select * from Category");
        }
   

        //根据CID获取指定分类信息
        public Entity.ItemCategory GetCategoryByCID(int intCID)
        {
            DataRowView drv = helper.GetTableValue("select * from Category where CID=" + intCID + "");
            return new Entity.ItemCategory(intCID, drv["CName"].ToString(), drv["Description"].ToString());
        }
        //新增
        public bool InsertCategory(string sCName, string sDescription)
        {
            return helper.ExcuteCommandInt("insert into Category(CName,Description) values ('" + sCName + "','" + sDescription + "')") > 0;
                 
        }
        //更新指定类别
        public bool UpdateCategory(int CID, string CName, string Description)
        {
            return helper.ExcuteCommandInt("update Category set CName='" + CName + "',Description='" + Description + "' where CID=" + CID + "") > 0;
        }
        //删除
        public bool DeleteCategory(int CID)
        {
            return helper.ExcuteCommandInt("delete from Category where CID=" + CID + "") > 0;
        } 
    }
}
