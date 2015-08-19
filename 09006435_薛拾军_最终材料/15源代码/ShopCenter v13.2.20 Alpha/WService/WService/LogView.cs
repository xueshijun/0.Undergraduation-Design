using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Data;

namespace WService
{
    public class LogView
    {
        public static List<string> addViewLog(
            string VItemID, string VUserID, string VLocationX,
            string VLocationY, string VDate, string VisHidden)
        {
            Entity.ViewLog viewLog = new Entity.ViewLog();
            viewLog.setVItemID(VItemID);
            viewLog.setVUserID(VUserID);
            viewLog.setVLocationX(VLocationX);
            viewLog.setVLocationY(VLocationY);
            viewLog.setVDate(VDate);
            viewLog.setVisHidden(VisHidden);
            List<string> list = new List<string>();
            bool bol = new BLL.LogView().addLogView(viewLog);
            list.Add(bol.ToString());
            return list;
        }
        /// <summary>
        /// 前十次浏览历史
        /// </summary>
        /// <returns></returns>
        public static List<string> getLastTenLogView()
        {
            List<string> list = new List<string>();
            DataSet ds = new BLL.LogView().getLastTenLogView();
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                //VLogID,VItemID,VUserID,VLocationX,VLocationY,VDate,VisHidden
                list.Add(dr[0].ToString());//VLogID,
                list.Add(dr[1].ToString());//VItemID,
                list.Add(dr[2].ToString());//VUserID,
                list.Add(dr[3].ToString());//VLocationX,
                list.Add(dr[4].ToString());//VLocationY,
                list.Add(dr[5].ToString());//VDate
                list.Add(dr[6].ToString());//VisHidden
            }
            return list;
        }

        /// <summary>
        /// 浏览历史
        /// </summary>
        /// <returns></returns>
        public static List<string> getLogView()
        {
            List<string> list = new List<string>();
            DataSet ds = new BLL.LogView().getLogView();
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                //VLogID,VItemID,VUserID,VLocationX,VLocationY,VDate,VisHidden
                list.Add(dr[0].ToString());//VLogID,
                list.Add(dr[1].ToString());//VItemID,
                list.Add(dr[2].ToString());//VUserID,
                list.Add(dr[3].ToString());//VLocationX,
                list.Add(dr[4].ToString());//VLocationY,
                list.Add(dr[5].ToString());//VDate
                list.Add(dr[6].ToString());//VisHidden
            }
            return list;
        }

        /// <summary>
        /// 某商品前十次浏览历史
        /// </summary>
        /// <returns></returns>
        public static List<string> getLastTenLogViewByItemID(int ItemID)
        {
            List<string> list = new List<string>();
            DataSet ds = new BLL.LogView().getLastTenLogViewByItemID(ItemID);
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                //VLogID,VItemID,VUserID,VLocationX,VLocationY,VDate,VisHidden
                list.Add(dr[0].ToString());//VLogID,
                list.Add(dr[1].ToString());//VItemID,
                list.Add(dr[2].ToString());//VUserID,
                list.Add(dr[3].ToString());//VLocationX,
                list.Add(dr[4].ToString());//VLocationY,
                list.Add(dr[5].ToString());//VDate
                list.Add(dr[6].ToString());//VisHidden
            }
            return list;
        }

        /// <summary>
        ///某商品浏览历史
        /// </summary>
        /// <returns></returns>
        public static List<string> getLogViewByItemID(int ItemID)
        {
            List<string> list = new List<string>();
            DataSet ds = new BLL.LogView().getLogViewByItemID(ItemID);
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                //VLogID,VItemID,VUserID,VLocationX,VLocationY,VDate,VisHidden
                list.Add(dr[0].ToString());//VLogID,
                list.Add(dr[1].ToString());//VItemID,
                list.Add(dr[2].ToString());//VUserID,
                list.Add(dr[3].ToString());//VLocationX,
                list.Add(dr[4].ToString());//VLocationY,
                list.Add(dr[5].ToString());//VDate
                list.Add(dr[6].ToString());//VisHidden
            }
            return list;
        }
    }
}
