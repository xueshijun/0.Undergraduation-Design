using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;


namespace WService
{
    public class ShopingCar
    {
        public static List<string> getCoutForNoPay(int intUserID) {
            List<string> list = new List<string>();
            BLL.ShopingCar car=new BLL.ShopingCar();
            int count=car.GetNoPayCounts(intUserID)<1?0:car.GetNoPayCounts(intUserID);
            list.Add(count.ToString());
            return list;
        }
        
        public static List<string> getCountForAll(int intUserID)
        {
            List<string> list = new List<string>();
            BLL.ShopingCar car = new BLL.ShopingCar();
            int count = car.GetPayedCounts(intUserID) < 1 ? 0 : car.GetNoPayCounts(intUserID);
            list.Add(count.ToString());
            return list; 
        }
        
        /// <summary> 
        /// "select CarID,ItemID,UserID,IsPay,Visible,AddDate,IID,ProductID,BrandID,Name,AgoraPrice,MemberPrice,VipPrice,SeckillPrice,Area,Details,ViewTimes,BuyTimes,IsSecondKill,LimitTime,Count from MyCar,Items where UserID=" + intUID + " and IID=ItemID  and Visible='true'"
        /// </summary>
        /// <param name="UserID"></param>
        /// <returns></returns>
        public static List<string> getUnPayAndPayedInfo(int UserID) { 
            List<string> list = new List<string>();
            DataSet ds = new BLL.ShopingCar().GetUnPayAndPayed(UserID);
            foreach (DataRow dr in ds.Tables[0].Rows) { 
                //"Count from MyCar,Items where UserID=" + intUID + " and IID=ItemID  and Visible='true'  "
                list.Add(dr[0].ToString()); //CarID
                list.Add(dr[1].ToString());//ItemID
                list.Add(dr[2].ToString());//UserID
                list.Add(dr[3].ToString()); //IsPay
                list.Add(dr[4].ToString()); //Visible
                list.Add(dr[5].ToString());//AddDate
                //list.Add(dr[6].ToString());//IID  
                list.Add(dr[7].ToString());// ProductID
                list.Add(dr[8].ToString());// BrandID
                list.Add(dr[9].ToString());// Name,
                list.Add(dr[10].ToString());//AgoraPrice,
                list.Add(dr[11].ToString());//MemberPrice,
                list.Add(dr[12].ToString());//VipPrice,
                list.Add(dr[13].ToString());//SeckillPrice,
                list.Add(dr[14].ToString());//Area,
                list.Add(dr[15].ToString());//Details,
                list.Add(dr[16].ToString());//ViewTimes,
                list.Add(dr[17].ToString());//BuyTimes,
                list.Add(dr[18].ToString());//IsSecondKill,
                list.Add(dr[19].ToString());//LimitTime   
                list.Add(dr[20].ToString());//Count   
            }
            return list;
        } 
    }
}
