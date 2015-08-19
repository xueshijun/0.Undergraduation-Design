using System;
using System.Collections.Generic;

using System.Text;


using System.Data;
using System.Data.SqlClient;

namespace BLL
{
    public class LogLogin
    {
        //LUserID,LLocationX,LLocationY,LDate,LisHidden
        DAL.SqlHelper helper = new DAL.SqlHelper();
        public bool addLogLogin(Entity.LoginLog loginLog) {
            if (helper.ExcuteCommandInt("insert into LoginLog(LUserID,LLocationX,LLocationY,LDate,LisHidden) values("
                + loginLog.getLUserID() + ",'" 
                + loginLog.getLLocationX()+ "','"
                + loginLog.getLLocationY()+ "','"
                + loginLog.getLDate()+ "','"
                + loginLog.isLisHidden()+ "');") > 0){
                return true;
            }else{
            return false;}
        }


        public DataSet getLastTenLogLogin()
        {
            return helper.GetdataSet("select top 10 LLogID,LUserID,LLocationX,LLocationY,LDate,LisHidden from  LoginLog");
        }

        public DataSet getLogLogin()
        {
            return helper.GetdataSet("select LLogID,LUserID,LLocationX,LLocationY,LDate,LisHidden from  LoginLog");
        }


        public DataSet getLastTenLogLoginByUserID(int userID)
        {
            return helper.GetdataSet("select top 10 LLogID,LUserID,LLocationX,LLocationY,LDate,LisHidden from  LoginLog where LUserID=" + userID + "");
        }

        public DataSet getLogLoginByUserID(int userID)
        {
            return helper.GetdataSet("select LLogID,LUserID,LLocationX,LLocationY,LDate,LisHidden from  LoginLog where LUserID=" + userID + "");
        }
    }
}
