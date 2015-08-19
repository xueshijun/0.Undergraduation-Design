using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Data;

namespace BLL
{ 
    public  class Admins
    {
        DAL.SqlHelper helper = new DAL.SqlHelper();

        //public Entity.Admins LoginOn(string Name, string Pass) {
        //    DataRowView drv= helper.GetTableValue("select * from  Admins where UName='" + Name + "' and UPass ='" + Pass + "'");
        //    return new Entity.Admins(int.Parse(
        //            drv["AdminID"].ToString()),
        //            drv["UName"].ToString(),
        //            drv["UPass"].ToString()); 
        //}
        public Entity.Admins LoginOn(Entity.Admins admin)
        {
            DataRowView drv = helper.GetTableValue("select * from  Admins where UName='" + admin.getName() + "' and UPass ='" + admin.getPass() + "'");
            return new Entity.Admins(int.Parse(
                    drv["AdminID"].ToString()),
                    drv["UName"].ToString(),
                    drv["UPass"].ToString());
        }




        //public bool LoginOnCheck(string Name, string Pass) {
        //   return helper.GetdataSet("select * from  Admins where UName='" 
        //       + Name + "' and UPass ='"
        //       + Pass + "'").Tables[0].Rows.Count > 0;
        //} 
        public bool LoginOnCheck(Entity.Admins admin)
        {
            return helper.GetdataSet("select * from  Admins where UName='"
                + admin.getName() + "' and UPass ='"
                + admin.getPass() + "'").Tables[0].Rows.Count > 0;
        }
    }
}
