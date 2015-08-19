using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
 

namespace BLL
{ 
    public class User
    {
      
       public Entity.UserInfo userInfo;
       DAL.SqlHelper sqlHelper = new DAL.SqlHelper();

        //用户登录状态
        public  enum myLoginState { UNLOGIN = 0, LOGINSUSCCESS = 1, LOGINFAILED = 2 ,LOGINED=3};//0未登录\1已登录\2登录失败\3已经登录

        #region 更新用户信息
        //更新所有信息
        public int UpdateUser(int intUID,string strPass, string strEmail, string strPhone, string strTel, string strAddress, string strIP)
        {
            userInfo.Pass=strPass;
            userInfo.Email = strEmail;
            userInfo.Phone = strPhone;
            userInfo.Tel = strTel;
            userInfo.Address = strAddress;
            userInfo.IP = strIP; 
            return sqlHelper.ExcuteCommandInt("update [User] set  Pass='"
                +strPass+"',Email='"+strEmail+"',Phone='"+strPhone+"',Tel='"+strTel+"',Address='"+strAddress+"' where UID=" + intUID + "");

        }
        //更新密码
        public int UpdateUser(int intUID, string strPass) 
        {
            return sqlHelper.ExcuteCommandInt("update [User] set  Pass='" + strPass + "' where UID=" + intUID + "");
        }
        #endregion
      
        
        //删除用户
        public int DeleteUser(int intUID)
        {
            userInfo.UserName = string.Empty;
            userInfo.Pass = string.Empty;
            userInfo.Email = string.Empty;
            userInfo.Phone = string.Empty;
            userInfo.Tel = string.Empty;
            userInfo.Address = string.Empty;
            userInfo.IP = string.Empty;
            return sqlHelper.ExcuteCommandInt("delete from [User] where UID=" + intUID + "");
            
        }
        
        //新增用户
        public bool InsertUser(string strName, string strPass, string strEmail, string strPhone, string strTel, string strAddress, string strIP) 
        {
            userInfo = new Entity.UserInfo(strName,strPass,strEmail,strPhone,strTel,strAddress,strIP);
            if (sqlHelper.ExcuteCommandInt("insert into [User](Name,Pass,Email,Phone,Tel,Address,IP) values ('"
                + strName + "','" + strPass + "','" + strEmail + "','" + strPhone + "','" + strTel + "','" + strAddress + "','" + strIP + "')") > 0)
                return true;
            else
                return false;
        }
 
        //判断用户登录状态
        public myLoginState CheckUser(string strUser, string strPass)
        {
            string strSql = "select  UID,Name,Pass,Email,Phone,Tel,Address,IP,VIP.VName,VImg from [User],VIP  where Name='" + strUser + "' and Pass='" + strPass + "' and VIP.VID=[User].VID";
            //string strSql = "select  Name,Pass  from [User]  where Name='" + strUser + "' and Pass='" + strPass + "'";
            if (sqlHelper.GetdataSet(strSql).Tables[0].Rows.Count > 0) 
            {
                //int intUID, string strName, string strPass, string strEmail, string strPhone, string strTel, string strAddress, string strIP
         
         
                DataRowView drv = sqlHelper.GetTableValue(strSql);
                userInfo = new Entity.UserInfo(int.Parse(drv["UID"].ToString()), drv["Name"].ToString(), drv["Pass"].ToString(), drv["Email"].ToString(), drv["Phone"].ToString(), drv["Tel"].ToString(), drv["Address"].ToString(), drv["IP"].ToString());

                System.Web.HttpCookie cookie1 = new System.Web.HttpCookie("UserInfo");
                cookie1.Values.Add("UID",drv["UID"].ToString());
                cookie1.Values.Add("name", drv["Name"].ToString());
                cookie1.Values.Add("pass", drv["Pass"].ToString());
                cookie1.Values.Add("vipImg", drv["VImg"].ToString()); 
                cookie1.Expires.AddHours(12);
                System.Web.HttpContext.Current.Response.AppendCookie(cookie1);

                return myLoginState.LOGINSUSCCESS;
            }
            else
            {
                return myLoginState.LOGINFAILED;
            }
                /*或者*/
            //SqlDataReader dr = sqlHelper.GetDataReader(strSql);
            //if (dr.HasRows)
            //{
            //    userInfo = new Entity.UserInfo( dr[1].ToString(), dr[2].ToString(), dr[3].ToString(), dr[4].ToString(), dr[5].ToString(), dr[6].ToString(),dr[7].ToString());
            //    return myLoginState.LOGINSUSCCESS;
            //}
            //else
            //    return myLoginState.LOGINFAILED;
        }

        //检测用户名是否存在
        public bool CheckName(string strUserName) {
            string strSql = "select  UID,Name,Pass,Email,Phone,Tel,Address,IP from [User] where Name='" + strUserName + "' ";
            //string strSql = "select  Name,Pass  from [User]  where Name='" + strUser + "' and Pass='" + strPass + "'";
          if (sqlHelper.GetdataSet(strSql).Tables[0].Rows.Count > 0)
              return true;
          else
              return false;
        }

        //检测密码是否正确
        public bool CheckPwd(int UID, string strPass) {
            if (sqlHelper.GetdataSet("select UID,Name,Pass from [User] where Pass='" + strPass + "'").Tables[0].Rows.Count > 0)
                return true; 
            else
                return false;  
        }

        //检查用户名格式
        public bool CheckNameStyle(string nName)
        {

            return (System.Text.RegularExpressions.Regex.IsMatch(nName, @"^[\w]{6,10}$"));
        }
    }
}
