using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BLL
{
    public class Items
    {
         
        DAL.SqlHelper helper = new DAL.SqlHelper();
        ////新增(不知道有没有调用？)
        ////public bool AddItems(string Name, string AgoraPrice, string MemberPrice, string VipPrice, string SeckillPrice, string Area, string Details, string Days, string Hours, string Minutes, string Seconds)
        ////{
        ////    //ProductID,BrandID,Name,AgoraPrice,MemberPrice,VipPrice,SeckillPrice,Area,Details,IsSecondKill,LimitTime
        ////    if (helper.ExcuteCommandInt("insert into Items(Name,AgoraPrice,MemberPrice,VipPrice,SeckillPrice,Area,Details,Days,Hours,Minutes,Seconds) values ('"
        ////        + Name + "','" + AgoraPrice + "','" + MemberPrice + "','" + VipPrice + "','" + SeckillPrice + "','" + Area + "','" + Details + "','" + Days + "','" + Hours + "','" + Minutes + "','" + Seconds + "')") > 0)
        ////        return true;
        ////    else
        ////        return false;
        ////} 
        //public bool AddItems(Entity.Items items) {
        //    return helper.ExcuteCommandInt("insert into Items(Name,AgoraPrice,MemberPrice,VipPrice,SeckillPrice,Area,Details,Days,Hours,Minutes,Seconds) values ('"
        //            + items.getName() + "','"
        //            + items.getAgoraPrice() + "','"
        //            + items.getMemberPrice() + "','" 
        //            + items.getVipPrice()+ "','" 
        //            + items.getSeckillPrice()+ "','"
        //            + items.getArea() + "','"
        //            + items.getDetails() + "','"
        //            + items.getDays() + "','" 
        //            + items.getHours()+ "','" 
        //            + items.getMinutes() + "','"
        //            + items.getSeconds()+ "')") > 0;
        //}

        //新增  
        public bool AddItemsInfo(Entity.Items items)
        {
            //ProductID,BrandID,Name,AgoraPrice,MemberPrice,VipPrice,SeckillPrice,Area,Details,IsSecondKill,LimitTime
          return helper.ExcuteCommandInt("insert into Items(ProductID,BrandID,Name,AgoraPrice,MemberPrice,VipPrice,SeckillPrice,Area,Details,Days,Hours,Minutes,Seconds) values ("
                + items.getProductID() + "," 
                + items.getBrandID()+ ",'"
                + items.getName()+ "','"
                + items.getAgoraPrice()+ "','"
                + items.getMemberPrice()+ "','"
                + items.getVipPrice()+ "','"
                + items.getSeckillPrice()+ "','"
                + items.getArea()+ "','"
                + items.getDetails()+ "','"
                + items.getDays()+ "','" 
                + items.getHours()+ "','"
                + items.getMinutes()+ "','"
                + items.getSeconds() + "')") > 0;
        } 


        public Entity.Items GetSingleItem(int ItemID)
        {
            DataRowView drv = helper.GetTableValue("select * from Items where IID=" + ItemID + "");
            Entity.Items item = new Entity.Items();
            item.setItemID(ItemID);
            item.setProductID(int.Parse(drv["ProductID"].ToString()));
            item.setBrandID( int.Parse(drv["BrandID"].ToString()));
            item.setName(drv["Name"].ToString());
            item.setAgoraPrice(drv["AgoraPrice"].ToString());
            item.setSeckillPrice(drv["SeckillPrice"].ToString());
            item.setMemberPrice(drv["MemberPrice"].ToString());
            item.setArea(drv["Area"].ToString());
            item.setDetails(drv["Details"].ToString());
            item.setVipPrice(drv["VipPrice"].ToString());
            item.setDays(drv["Days"].ToString());
            item.setHours(drv["Hours"].ToString());
            item.setMinutes(drv["Minutes"].ToString());
            item.setSeconds(drv["Seconds"].ToString());
            item.setIsSecondKill(drv["IsSecondKill"].ToString()); 
            return item;  
        }


        /**
         *不带图片 
        ProductID,ItemID,VipPrice,MemberPrice,Details,Minutes
        Seconds,Area,AgoraPrice,SeckillPrice,Days 
        Hours,CategoryID,PName,PID,CName,ItemName,BrandName,Fresh,IsSecondKill 
         */
        public DataSet GetItemByAllWithNoImg()
        {
            return helper.GetdataSet("select * from ItemsAllWithNoImg");
        }

        /**
         * 不带图片
        ProductID,ItemID,VipPrice,MemberPrice,Details,Minutes
        Seconds,Area,AgoraPrice,SeckillPrice,Days 
        Hours,CategoryID,PName,PID,CName,ItemName,BrandName,Fresh,IsSecondKill 
         */
        public DataSet GetItemByAllWithNoImgByItemID(int ItemID)
        {
            return helper.GetdataSet("select * from ItemsAllWithNoImg where ItemID=" + ItemID + "");
        }
        //不带图片根据分类获取相应的商品列表 
        public DataSet GetItemAllWithNoImgByPID(int PID)
        {
            return helper.GetdataSet("select * from ItemsAllWithNoImg where ProductID=" + PID + "");
        }

        /*  dbo.Images.ItemID, dbo.Images.ImageID, dbo.Images.SmallImg, dbo.Images.BigImg, dbo.Images.Alt, dbo.ItemsAllWithNoImg.BID, 
                      dbo.ItemsAllWithNoImg.BrandName, dbo.ItemsAllWithNoImg.ProductID, dbo.ItemsAllWithNoImg.ItemID AS IID, dbo.ItemsAllWithNoImg.AgoraPrice, 
                      dbo.ItemsAllWithNoImg.Area, dbo.ItemsAllWithNoImg.PName, dbo.ItemsAllWithNoImg.PID, dbo.ItemsAllWithNoImg.ItemName, 
                      dbo.ItemsAllWithNoImg.CName
         */
        //带图片
        public DataSet GetItemByAllWithALLImg()
        {
            return helper.GetdataSet("select * from ItemsAllWithAllImg ");
        }
        //带图片根据分类获取相应的商品列表 
        public DataSet GetItemAllWithALLImgByPID(int PID)
        {
            return helper.GetdataSet("select * from ItemsAllWithAllImg where ProductID=" + PID + " ");
        }

        //带图片
        public SqlDataAdapter GetItemByAllWithALLImg2(int CategoryID)
        {
            return helper.GetDataAdapter("select * from ItemsAllWithAllImg where CategoryID=" + CategoryID + "");
        }
        //带图片根据分类获取相应的商品列表 
        public SqlDataAdapter GetItemAllWithALLImgByPID2(int PID, int CategoryID)
        {
            return helper.GetDataAdapter("select * from ItemsAllWithAllImg where ProductID=" + PID + " and CategoryID=" + CategoryID + "");
        }



        #region 显示详细信息
        public DataSet GetTopOneDetails(int ItemID)
        {
            return helper.GetdataSet("select TOP 1 IID,Name,AgoraPrice,MemberPrice,VipPrice,Area,Fresh,ClickTimes,Sale,Details,ViewTimes,BuyTimes,Images.ItemID,Images.BigImg,Images.SmallImg,Images.Alt from Items,Images Where ItemID=IID  and ItemID=" + ItemID + "");
        } 
        #endregion








        //更新秒杀信息
        //public bool UpdateSingleItem(int ItemID, string Days, string Hours, string Minutes, string Seconds, string IsSecondKill)
        //{
        //    if (helper.ExcuteCommandInt("update Items set Days='"
        //        + Days + "',Hours='" + Hours + "',Minutes='" + Minutes + "',Seconds='" + Seconds + "',IsSecondKill='" + IsSecondKill + "' where IID=" + ItemID + "") > 0)
        //        return true;
        //    else
        //        return false;
        //}
        public bool UpdateSingleItemSeckill(Entity.Items items)
        {
            if (helper.ExcuteCommandInt("update Items set Days='"
                +items.getDays()+ "',Hours='" 
                +items.getHours()+ "',Minutes='" 
                +items.getMinutes()+ "',Seconds='" 
                +items.getSeconds()+ "',IsSecondKill='" 
                +items.getIsSecondKill()+ "' where IID=" 
                +items.getItemID() + "") > 0)
                return true;
            else
                return false;
        }
        
        //获取秒杀商品列表
        public DataSet getSeckillItemList()
        {
            return helper.GetdataSet("select  IID,ProductID,AgoraPrice,Days,Hours,Minutes,Seconds,Items.Name,ItemID,SmallImg,Images.BigImg,Alt from Items,Images  Where ItemID=IID  ");
        }


        public Entity.Items getSeckillItem(int id) {
            Entity.Items i= new Entity.Items();
            DataRowView drv = helper.GetTableValue("select  IID,ProductID,AgoraPrice,Days,Hours,Minutes,Seconds from Items,Images Where IID=" + id + "");
            i.setDays(drv["Days"].ToString());
            i.setHours(drv["Hours"].ToString());
            i.setMinutes(drv["Minutes"].ToString());
            i.setSeconds(drv["Seconds"].ToString());
            return i;
        }
        
        
        //更新商品信息
        //public bool UpdateSingleItem(int ItemID, int ProductID, int BrandID, string Name, string Area)
        //{
        //    if (helper.ExcuteCommandInt("update Items set ProductID=" + ProductID + ",BrandID=" + BrandID + ", Name='" + Name + "', Area='" + Area + "' where IID =" + ItemID + "") > 0)
        //        return true;
        //    else
        //        return false;
        //} 
        public bool UpdateSingleItem(Entity.Items item)
        {

            return helper.ExcuteCommandInt("update Items set ProductID="
                + item.getProductID() + ",BrandID="
                + item.getBrandID() + ", Name='"
                + item.getName() + "', Area='"
                + item.getArea() + "' where IID ="
                + item.getItemID() + "") > 0;
        } 
        //更新商品价格 
        public bool UpdateSinglePrice(Entity.Items item)
        {
            //int ItemID, string AgoraPrice, string MemberPrice, string VipPrice, string SeckillPrice
            if (helper.ExcuteCommandInt("update Items set AgoraPrice='"
                + item.getAgoraPrice()+ "',MemberPrice='"
                + item.getMemberPrice()+ "',VipPrice='"
                + item.getVipPrice()+ "',SeckillPrice='"
                + item.getSeckillPrice()+ "' where IID =" 
                + item.getItemID()+ "") > 0)
            {
                return true;
            }
            else
                return false;
        }


        //删除商品级联删除相关的图片（没有利用数据库的cascade delete功能）
        public bool DeleteItem(int ItemID)
        { 
            if (helper.ExcuteCommandInt("delete from Items where IID=" + ItemID + "") > 0)
                return true;
            else
                return false;
        }



        //浏览次数自增
        public bool ViewTimesAdd(int ItemID)
        {
            if (helper.ExcuteCommandInt("update Items set ViewTimes=ViewTimes+1 where IID=" + ItemID + "") > 0)
                return true;
            else
                return false;
        }

        //购买次数自增
        public bool BuyTimesAdd(int ItemID) {
            if (helper.ExcuteCommandInt("update Items set BuyTimes=BuyTimes+1 where IID=" + ItemID + "") > 0)
                return true;
            else
                return false;
        }
    }
}
