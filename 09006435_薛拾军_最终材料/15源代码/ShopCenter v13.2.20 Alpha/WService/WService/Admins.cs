using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Data.SqlClient;

namespace WService
{
    public class Admins
    { 

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public static List<string> getAllAdminInfo()
        {
            List<string> list = new List<string>(); 
            SqlDataReader reader = new DAL.SqlHelper().GetDataReader("select * from  Admins");
            while (reader.Read())
            {
                list.Add(reader["AdminID"].ToString());
                list.Add(reader["UName"].ToString());
                list.Add(reader["UPass"].ToString());
            }
            return list;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="ID"></param>
        /// <returns></returns>
        public static List<string> getAllAdminInfoById(int ID)
        {
            List<string> list = new List<string>();
            SqlDataReader reader = new DAL.SqlHelper().GetDataReader("select * from  Admins where AdminID="+ID+"");
            while (reader.Read())
            {
                list.Add(reader["AdminID"].ToString());
                list.Add(reader["UName"].ToString());
                list.Add(reader["UPass"].ToString());
            }
            return list;
        }
    }
}
