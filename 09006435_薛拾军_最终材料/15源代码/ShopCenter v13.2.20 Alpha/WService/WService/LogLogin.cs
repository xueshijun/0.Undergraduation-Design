using System;
using System.Collections.Generic;

using System.Text;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace WService
{
   public class LogLogin
    {
        //loginLog.getLUserID() + ",'" 
        //        + loginLog.getLLocationX()+ "','"
        //        + loginLog.getLLocationY()+ "','"
        //        + loginLog.getLDate()+ "','"
        //        + loginLog.isLisHidden()+ 
        public static List<string> addLoginLog(
                string LUserID,string LLocationX, 
                string LLocationY,string LDate,string LisHidden)
        {
            Entity.LoginLog loginLog = new Entity.LoginLog();
            loginLog.setLUserID(LUserID);
            loginLog.setLLocationX(LLocationX);
            loginLog.setLLocationY(LLocationY);
            loginLog.setLDate(LDate);
            loginLog.setLisHidden(LisHidden);
            List<string> list = new List<string>();
            bool bol = new BLL.LogLogin().addLogLogin(loginLog);
            list.Add(bol.ToString()); 
            return list;
        }
       /// <summary>
       /// 前十次登录历史
       /// </summary>
       /// <returns></returns>
        public static List<string> getLastTenLogLogin(){ 
            List<string> list = new List<string>();
            DataSet ds = new BLL.LogLogin().getLastTenLogLogin();
            foreach (DataRow dr in ds.Tables[0].Rows) {
                //LLogID,LUserID,LLocationX,LLocationY,LDate,LisHidden
                list.Add(dr[0].ToString());//LLogID,
                list.Add(dr[1].ToString());//LUserID,
                list.Add(dr[2].ToString());//LLocationX,
                list.Add(dr[3].ToString());//LLocationY,
                list.Add(dr[4].ToString());//LDate
                list.Add(dr[5].ToString());//LisHidden
            }
            return list;
        }

       /// <summary>
       /// 登录历史
       /// </summary>
       /// <returns></returns>
        public static List<string> getLogLogin()
        {
            List<string> list = new List<string>();
            DataSet ds = new BLL.LogLogin().getLogLogin();
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                //LLogID,LUserID,LLocationX,LLocationY,LDate,LisHidden
                list.Add(dr[0].ToString());//LLogID,
                list.Add(dr[1].ToString());//LUserID,
                list.Add(dr[2].ToString());//LLocationX,
                list.Add(dr[3].ToString());//LLocationY,
                list.Add(dr[4].ToString());//LDate
                list.Add(dr[5].ToString());//LisHidden
            }
            return list;
        }

        public static List<string> getLastTenLogLoginByUserID(int userID)
        {
            List<string> list = new List<string>();
            DataSet ds = new BLL.LogLogin().getLogLogin();
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                //LLogID,LUserID,LLocationX,LLocationY,LDate,LisHidden
                list.Add(dr[0].ToString());//LLogID,
                list.Add(dr[1].ToString());//LUserID,
                list.Add(dr[2].ToString());//LLocationX,
                list.Add(dr[3].ToString());//LLocationY,
                list.Add(dr[4].ToString());//LDate
                list.Add(dr[5].ToString());//LisHidden
            }
            return list;
        }

        public static List<string> getLogLoginByUserID(int userID)
        {
            List<string> list = new List<string>();
            DataSet ds = new BLL.LogLogin().getLogLogin();
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                //LLogID,LUserID,LLocationX,LLocationY,LDate,LisHidden
                list.Add(dr[0].ToString());//LLogID,
                list.Add(dr[1].ToString());//LUserID,
                list.Add(dr[2].ToString());//LLocationX,
                list.Add(dr[3].ToString());//LLocationY,
                list.Add(dr[4].ToString());//LDate
                list.Add(dr[5].ToString());//LisHidden
            }
            return list;
        }  
    }
}
