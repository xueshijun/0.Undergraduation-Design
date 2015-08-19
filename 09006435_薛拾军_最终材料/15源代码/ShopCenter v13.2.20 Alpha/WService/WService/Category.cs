using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Data;

namespace WService
{
    public class Category
    {
        public static List<string> getCategoryById(int id) {
            List<string> list = new List<string>();
            Entity.ItemCategory category = new BLL.ItemCategory().GetCategoryByCID(id); 
            list.Add(category.getCID().ToString());
            list.Add(category.getCName());
            list.Add(category.getDescription());
            return list;
        }


        /// <summary> 
        /// CID,CName,Description
        /// </summary>
        /// <returns></returns>
        public static List<string> getCategory()
        {
            List<string> list = new List<string>();
            DataSet ds= new BLL.ItemCategory().GetCategory();
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                list.Add(dr[0].ToString());//CID
                list.Add(dr[1].ToString());//CName
                list.Add(dr[2].ToString()); //Description
            } 
            return list;
        }  
    }
}
