using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Data;
using System.Data.SqlClient;
namespace BLL
{
    public class LogView
    {
        //VLogID,VItemID,VUserID,VLocationX,VLocationY,VDate,VisHidden
        DAL.SqlHelper helper = new DAL.SqlHelper();
        public bool addLogView(Entity.ViewLog viewLog)
        {
            return helper.ExcuteCommandInt("insert into ViewLogs(VItemID,VUserID,VLocationX,VLocationY,VDate,VisHidden) values("
               + viewLog.getVItemID() + ","
               + viewLog.getVUserID() + ",'"
               + viewLog.getVLocationX() + "','"
               + viewLog.getVLocationY() + "','"
               + viewLog.getVDate() + "','"
               + viewLog.isVisHidden() + "')") > 0;
        }


        public DataSet getLastTenLogView()
        {
            return helper.GetdataSet("select top 10 VLogID,VItemID,VUserID,VLocationX,VLocationY,VDate,VisHidden from  ViewLogs");
        }

        public DataSet getLogView()
        {
            return helper.GetdataSet("select VLogID,VItemID,VUserID,VLocationX,VLocationY,VDate,VisHidden from  ViewLogs");
        }



         
        //
        public DataSet getLastTenLogViewByItemID(int ItemID)
        {
            return helper.GetdataSet("select top 10 VLogID,VItemID,VUserID,VLocationX,VLocationY,VDate,VisHidden from  ViewLogs where VItemID=" + ItemID + "");
        }

        //
        public DataSet getLogViewByItemID(int ItemID)
        {
            return helper.GetdataSet("select VLogID,VItemID,VUserID,VLocationX,VLocationY,VDate,VisHidden from  ViewLogs where VItemID=" + ItemID + "");
        }
        /*
        //
        public DataSet getLastTenLogViewByUserID(int userID)
        {
            return helper.GetdataSet("select top 10 VLogID,VItemID,VUserID,VLocationX,VLocationY,VDate,VisHidden from  ViewLogs where VUserID=" + userID + "");
        }

        //
        public DataSet getLogViewByUserID(int userID)
        {
            return helper.GetdataSet("select VLogID,VItemID,VUserID,VLocationX,VLocationY,VDate,VisHidden from  ViewLogs where VUserID=" + userID + "");
        }
         * */
    }
}
