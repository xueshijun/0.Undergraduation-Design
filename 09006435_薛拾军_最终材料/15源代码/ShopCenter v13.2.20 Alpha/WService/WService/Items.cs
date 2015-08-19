using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Data;

namespace WService
{
    public class Items
    {
        //public static List<string> getItemInfoById(int itemId) {
        //    List<string> list = new List<string>();
        //    Entity.Items items = new BLL.Items().GetSingleItem(itemId);
        //    list.Add(items.getItemID().ToString());
        //    list.Add(items.getProductID().ToString());
        //    list.Add(items.getBrandID().ToString());
        //    list.Add(items.getName());
        //    list.Add(items.getAgoraPrice());
        //    list.Add(items.getSeckillPrice().ToString());
        //    list.Add(items.getMemberPrice().ToString());
        //    list.Add(items.getVipPrice());
        //    list.Add(items.getArea());
        //    list.Add(items.getDetails()); 
        //    list.Add(items.getDays());
        //    list.Add(items.getHours());
        //    list.Add(items.getMinutes());
        //    list.Add(items.getSeconds());
        //    list.Add(items.getIsSecondKill());         
        //    return list;
        //}


        //public static List<string> getAllItemsInfoWithImages()
        //{
        //    List<string> list = new List<string>();
        //    DataSet ds = new BLL.PicturesItem().GetImageWithItems();
        //    foreach (DataRow dr in ds.Tables[0].Rows)
        //    {
        //        list.Add(dr[0].ToString());//Images.ItemID
        //        list.Add(dr[1].ToString());//dbo.Images.ImageID
        //        list.Add(dr[2].ToString());//dbo.Images.SmallImg
        //        list.Add(dr[3].ToString());//dbo.Images.BigImg
        //        list.Add(dr[4].ToString());//dbo.Images.Alt
        //        list.Add(dr[5].ToString());//dbo.ItemsAllWithNoImg.BID
        //        list.Add(dr[6].ToString());//dbo.ItemsAllWithNoImg.BrandName
        //       // list.Add(dr[7].ToString());//dbo.ItemsAllWithNoImg.ProductID
        //        //list.Add(dr[8].ToString());//dbo.ItemsAllWithNoImg.ItemID AS IID
        //        //list.Add(dr[9].ToString());//dbo.ItemsAllWithNoImg.AgoraPrice
        //        //list.Add(dr[10].ToString());//dbo.ItemsAllWithNoImg.Area
        //        //list.Add(dr[11].ToString());//dbo.ItemsAllWithNoImg.PName
        //        //list.Add(dr[12].ToString());//dbo.ItemsAllWithNoImg.PID
        //        //list.Add(dr[13].ToString());//dbo.ItemsAllWithNoImg.ItemName
        //        //list.Add(dr[14].ToString());//dbo.ItemsAllWithNoImg.CName
        //        //list.Add(dr[15].ToString());//dbo.ItemsAllWithNoImg.Hours
        //        //list.Add(dr[16].ToString());//dbo.ItemsAllWithNoImg.Days
        //        //list.Add(dr[17].ToString());//dbo.ItemsAllWithNoImg.SeckillPrice
        //        //list.Add(dr[18].ToString());//dbo.ItemsAllWithNoImg.IsSecondKill
        //        //list.Add(dr[19].ToString());// dbo.ItemsAllWithNoImg.Seconds,
        //        //list.Add(dr[20].ToString());// dbo.ItemsAllWithNoImg.Minutes, 
        //        //list.Add(dr[21].ToString());//dbo.ItemsAllWithNoImg.Details,  
        //        //list.Add(dr[22].ToString());//dbo.ItemsAllWithNoImg.MemberPrice, 
        //        //list.Add(dr[23].ToString());//dbo.ItemsAllWithNoImg.VipPrice, 
        //        //list.Add(dr[24].ToString());//dbo.ItemsAllWithNoImg.CategoryID,
        //        //list.Add(dr[25].ToString()); //dbo.ItemsAllWithNoImg.Fresh 
        //    }
        //    return list;
        //} 


        public static List<string> getItemsWithNoImgByItemID(int itemID)
        {
            List<string> list = new List<string>();

            DataSet ds = new BLL.Items().GetItemByAllWithNoImgByItemID(itemID);
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                list.Add(dr[0].ToString());//BID,
                list.Add(dr[1].ToString());//ProductID,
                list.Add(dr[2].ToString());//ItemID,
                list.Add(dr[3].ToString());//VipPrice,
                list.Add(dr[4].ToString());//MemberPrice,
                list.Add(dr[5].ToString());//Details,
                list.Add(dr[6].ToString());//Minutes
                list.Add(dr[7].ToString());//Seconds,
                list.Add(dr[8].ToString());//AgoraPrice,
                list.Add(dr[9].ToString());//Area,
                list.Add(dr[10].ToString());//SeckillPrice,
                list.Add(dr[11].ToString());//Days 
                list.Add(dr[12].ToString());//Hours,
                list.Add(dr[13].ToString());//CategoryID,
                list.Add(dr[14].ToString());//PName,
                list.Add(dr[15].ToString());//PID,
                list.Add(dr[16].ToString());//CName,
                list.Add(dr[17].ToString());//ItemName,
                list.Add(dr[18].ToString());//BrandName,
                list.Add(dr[19].ToString());//Fresh,
                list.Add(dr[20].ToString());//IsSecondKill 
            }
            return list;
        }

        /* 
        BID,ProductID,ItemID,VipPrice,MemberPrice,Details,Minutes
        Seconds,AgoraPrice,Area,SeckillPrice,Days 
        Hours,CategoryID,PName,PID,CName,ItemName,BrandName,Fresh,IsSecondKill 
         */
        public static List<string> getItemsWithNoImg()
        {
            List<string> list = new List<string>();
            DataSet ds = new BLL.Items().GetItemByAllWithNoImg();
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                list.Add(dr[0].ToString());//BID,
                list.Add(dr[1].ToString());//ProductID,
                list.Add(dr[2].ToString());//ItemID,
                list.Add(dr[3].ToString());//VipPrice,
                list.Add(dr[4].ToString());//MemberPrice,
                list.Add(dr[5].ToString());//Details,
                list.Add(dr[6].ToString());//Minutes
                list.Add(dr[7].ToString());//Seconds,
                list.Add(dr[8].ToString());//AgoraPrice,
                list.Add(dr[9].ToString());//Area,
                list.Add(dr[10].ToString());//SeckillPrice,
                list.Add(dr[11].ToString());//Days 
                list.Add(dr[12].ToString());//Hours,
                list.Add(dr[13].ToString());//CategoryID,
                list.Add(dr[14].ToString());//PName,
                list.Add(dr[15].ToString());//PID,
                list.Add(dr[16].ToString());//CName,
                list.Add(dr[17].ToString());//ItemName,
                list.Add(dr[18].ToString());//BrandName,
                list.Add(dr[19].ToString());//Fresh,
                list.Add(dr[20].ToString());//IsSecondKill 
            }
            return list;
        } 
    }
}
