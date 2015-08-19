using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Data;

namespace BLL
{
    public class ShopingCar
    {
        DAL.SqlHelper helper = new DAL.SqlHelper();


        public ShopingCar() { }


        //获取指定人所有的商品的总数（包括已付款和未付款）
        public int GetCounts(int intUID)
        {
            return helper.GetdataSet("select CarID,ItemID,UserID,IsPay,Visible,Count,AddDate,IID,ProductID,BrandID,Name,AgoraPrice,MemberPrice,VipPrice,SeckillPrice,Area,Details,ViewTimes,BuyTimes,IsSecondKill,LimitTime,Count from MyCar,Items where UserID=" + intUID + " and IsPay='false' and IID=ItemID  and Visible='true' ").Tables[0].Rows.Count;
        }
        //等待结账的物品数
        public int GetNoPayCounts(int intUID)
        {
            return helper.GetdataSet("select * from  MyCar where UserID=" + intUID + " and  IsPay='false'  and Visible='true' ").Tables[0].Rows.Count;
        }
        //查看某人已购物总数
        public int GetPayedCounts(int intUID)
        {
            return helper.GetdataSet("select * from  MyCar where UserID=" + intUID + " and  IsPay='true'  and Visible='true' ").Tables[0].Rows.Count;
        }

        //获取指定人购物车里存放的内容
        public DataSet GetShopCarUnPay(int intUID)
        {
            //Items.IID,Items.ProductID,Items.BrandID,Items.Name,Items.AgoraPrice,Items.MemberPrice,Items.VipPrice,Items.SeckillPrice,Items.Area,Items.Details,Items.IsSecondKill,Items.LimitTime
            return helper.GetdataSet("select CarID,ItemID,UserID,IsPay,Visible,AddDate,IID,ProductID,BrandID,Name,AgoraPrice,MemberPrice,VipPrice,SeckillPrice,Area,Details,ViewTimes,BuyTimes,IsSecondKill,LimitTime,Count from MyCar,Items where UserID=" + intUID + " and IsPay='false' and IID=ItemID  and Visible='true'");
        }



        /// <summary>
        ///获取指定用户所有购物信息（包括已付款和未付款） 
        /// </summary>
        /// <param name="intUID"></param>
        /// <returns></returns>
        public DataSet GetUnPayAndPayed(int intUID)
        {
            return helper.GetdataSet("select CarID,ItemID,UserID,IsPay,Visible,AddDate,IID,ProductID,BrandID,Name,AgoraPrice,MemberPrice,VipPrice,SeckillPrice,Area,Details,ViewTimes,BuyTimes,IsSecondKill,LimitTime,Count from MyCar,Items where UserID=" + intUID + " and IID=ItemID  and Visible='true' ");
        }


        /// <summary>
        ///获取指定用户的购物历史 
        /// </summary>
        /// <param name="intUID"></param>
        /// <returns></returns>
        public DataSet GetShopCarPayed(int intUID)
        {
            //Items.IID,Items.ProductID,Items.BrandID,Items.Name,Items.AgoraPrice,Items.MemberPrice,Items.VipPrice,Items.SeckillPrice,Items.Area,Items.Details,Items.IsSecondKill,Items.LimitTime
            return helper.GetdataSet("select CarID,ItemID,UserID,IsPay,Visible,AddDate,IID,ProductID,BrandID,Name,AgoraPrice,MemberPrice,VipPrice,SeckillPrice,Area,Details,ViewTimes,BuyTimes,IsSecondKill,LimitTime,Count from MyCar,Items where UserID=" + intUID + " and IsPay='true' and Visible='true' and IID=ItemID");
        }

        //获取购物车里所有人存放的内容，取最新的前十个
        public DataSet GetTopTenShopCar()
        {
            //Items.IID,Items.ProductID,Items.BrandID,Items.Name,Items.AgoraPrice,Items.MemberPrice,Items.VipPrice,Items.SeckillPrice,Items.Area,Items.Details,Items.IsSecondKill,Items.LimitTime
            return helper.GetdataSet("select  top 10  CarID,ItemID,Name,Visible,AddDate from MyCar,Items where IID=ItemID and Visible='true' order by AddDate desc");//select top 10 * from myCarItems
        }

        //查看购物车中是否已经存在指定商品
        private bool isExist(int ItemID, int UserID)
        {
            return helper.GetdataSet("select CarID,ItemID,UserID from MyCar where ItemID=" + ItemID + " and UserID=" + UserID + "and Visible='true' ").Tables[0].Rows.Count >= 1;
        }
        //加入购物车
        public bool Buy(int ItemID, int UserID)
        {
            string sql = "";
            if (isExist(ItemID, UserID))
            {
                sql = "update MyCar set Count=Count+1  where ItemID=" + ItemID + " and UserID=" + UserID + "";
            }
            else
            {
                sql = "insert into  MyCar(ItemID,UserID,IsPay,AddDate) values (" + ItemID + "," + UserID + ",'false','" + DateTime.Now.ToString() + "') ";
            }
           // new BLL.Items().BuyTimesAdd(ItemID);//购买次数自增
            return sql == "" ? false : helper.ExcuteCommandInt(sql) > 0;
        }

        //付款
        public bool Pay(int CarID,int UserID)
        {
            return helper.ExcuteCommandInt("update MyCar set IsPay='true' where CarID=" + CarID + " and UserID=" + UserID + "") > 0;
        }

        //
        /// <summary>
        /// 从购物车中删除货物
        /// 当商品数量>1时，减一
        /// 当商品数量=1时，删除
        /// </summary>
        /// <param name="CarID"></param>
        /// <param name="ItemID"></param>
        /// <param name="UserID"></param>
        /// <returns></returns>
        public bool RemoveItem(int ItemID, int UserID)
        {
            if (helper.GetdataSet("select CarID,ItemID,UserID from MyCar where ItemID=" + ItemID + " and UserID=" + UserID + "and Visible='true' ande Count>1").Tables[0].Rows.Count >= 1)
            {
                return RemoveOne(ItemID, UserID);
            }
            else {
                return ClearAllItems(ItemID, UserID);
            } 
        } 
        public bool RemoveOne(int ItemID, int UserID)
        {
            return helper.ExcuteCommandInt("update MyCar set Count=Count-1  where ItemID=" + ItemID + " and UserID=" + UserID + "") > 0;
        }

        public bool ClearAllItems(int ItemID, int UserID)
        {
            return helper.ExcuteCommandInt("update MyCar set Visible='false' where ItemID=" + ItemID + " and UserID=" + UserID + "") > 0;
        }
    }
}