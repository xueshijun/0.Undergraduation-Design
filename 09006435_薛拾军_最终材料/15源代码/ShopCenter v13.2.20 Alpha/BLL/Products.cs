using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using Entity;

namespace BLL
{
    public class Products
    {
        DAL.SqlHelper helper = new DAL.SqlHelper();
       

        public DataSet GetProduct()
        {
            return helper.GetdataSet("select * from Products");
        }

        public DataSet GetProductByCID(int CategoryID)
        {
            return helper.GetdataSet("select * from Products where CategoryID=" + CategoryID + "");
        }

        public Entity.Products GetProductInfo(int intPID)
        {
            DataRowView drv = helper.GetTableValue("select * from Products where PID="+intPID+"");
            return 
                new Entity.Products(intPID,
                    int.Parse(drv["CategoryID"].ToString()),
                    drv["Name"].ToString(), 
                    drv["Description"].ToString());
        }

         

        //新增
        //public bool AddProduct(int CategoryID,string Name,string Description) {
        //    if (helper.ExcuteCommandInt("insert into Products(CategoryID,Name,Description) values("+CategoryID+",'"+Name+"','"+Description+"')") > 0)
        //        return true;
        //    else
        //        return false;
        //}
        public bool AddProduct(Entity.Products product)
        {
            //int CategoryID, string Name, string Description
            if (helper.ExcuteCommandInt("insert into Products(CategoryID,Name,Description) values(" 
                + product.getCategoryID() + ",'" 
                + product.getName()+ "','" 
                +product.getDescription() + "')") > 0)
                return true;
            else
                return false;
        }
        //更新
        //public bool UpdateProducts(int PID,int CategoryID,string Name,string Description)
        //{
        //    if (helper.ExcuteCommandInt("update Products set CategoryID=" + CategoryID + ",Name='" + Name + "',Description='" + Description + "' where PID=" + PID + "") > 0)
        //        return true;
        //    else
        //        return false;
        //}
        public bool UpdateProducts(Entity.Products product)
        {
            if (helper.ExcuteCommandInt("update Products set CategoryID=" 
                +product.getCategoryID()+ ",Name='" 
                +product.getName()+ "',Description='" 
                +product.getDescription()+ "' where PID="
                + product.getPID() + "") > 0)
                return true;
            else
                return false;
        }

        public bool DeleteProducts(int PID)
        {
            if (helper.ExcuteCommandInt("delete from  Products where PID=" + PID + "") > 0)
                return true;
            else
                return false;
        }
         
    }
}