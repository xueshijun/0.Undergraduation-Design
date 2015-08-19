using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Data.Sql;
using System.Data.SqlClient;

namespace WService
{
    public  class Users{
       public static List<string> getLoginInfo(string strUser, string strPass)
      {
          string strSql = "select UID,Name,Pass,Email,Phone,Tel,Address,IP,VIP.VName,VImg from [User],VIP  where Name='" + strUser.Trim() + "' and Pass='" + strPass.Trim() + "' and VIP.VID=[User].VID";
            List<string> list = new List<string>(); 
            SqlDataReader reader = new DAL.SqlHelper().GetDataReader(strSql); 
            while (reader.Read())
            {
                try { list.Add(reader["UID"].ToString()); }
                catch{ }
               try { list.Add(reader["Name"].ToString()); }
                catch{ }
                try {list.Add(reader["Pass"].ToString()); }
                catch{ }
                try {list.Add(reader["Email"].ToString()); }
                catch{ }
               try { list.Add(reader["Phone"].ToString()); }
                catch{ }
               try { list.Add(reader["Tel"].ToString()); }
                catch{ }
                try {list.Add(reader["Address"].ToString()); }
                catch{ }
               try { list.Add(reader["IP"].ToString()); }
                catch{ }
                try {list.Add(reader["VName"].ToString()); }
                catch{ }
                try { list.Add(reader["VImg"].ToString()); }
                catch { }
            }
            return list;
        } 
    }
}
