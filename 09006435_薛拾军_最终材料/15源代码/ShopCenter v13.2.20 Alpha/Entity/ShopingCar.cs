using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class ShopingCar
    {
        /// "select CarID,ItemID,UserID,IsPay,Visible,AddDate,IID,ProductID,BrandID,Name,AgoraPrice,MemberPrice,VipPrice,SeckillPrice,Area,Details,ViewTimes,BuyTimes,IsSecondKill,LimitTime from MyCar,Items where UserID=" + intUID + " and IID=ItemID  and Visible='true' "

        private int CarID;
        private int ItemID;
        private int UserID;
        private bool IsPay;
        private bool Visible;//2013.1.5
        private int ProductID;
        private int BrandID;
        private String Name;
        private double AgoraPrice;
        private double MemberPrice;
        private double VipPrice;
        private double SeckillPrice;
        private String Area;
        private String Details;
        private int ViewTimes;
        private int BuyTimes;
        private bool IsSecondKill;
        private int LimitTime;

        private DateTime AddDate;
        private int Count;


        public int getCarID()
        {
            return CarID;
        }




        public void setCarID(int carID)
        {
            CarID = carID;
        }




        public int getItemID()
        {
            return ItemID;
        }




        public void setItemID(int itemID)
        {
            ItemID = itemID;
        }




        public int getUserID()
        {
            return UserID;
        }




        public void setUserID(int userID)
        {
            UserID = userID;
        }




        public bool isIsPay()
        {
            return IsPay;
        }




        public void setIsPay(bool isPay)
        {
            IsPay = isPay;
        }




        public bool isVisible()
        {
            return Visible;
        }




        public void setVisible(bool visible)
        {
            Visible = visible;
        }




        public int getProductID()
        {
            return ProductID;
        }




        public void setProductID(int productID)
        {
            ProductID = productID;
        }




        public int getBrandID()
        {
            return BrandID;
        }




        public void setBrandID(int brandID)
        {
            BrandID = brandID;
        }




        public String getName()
        {
            return Name;
        }




        public void setName(String name)
        {
            Name = name;
        }




        public double getAgoraPrice()
        {
            return AgoraPrice;
        }




        public void setAgoraPrice(double agoraPrice)
        {
            AgoraPrice = agoraPrice;
        }




        public double getMemberPrice()
        {
            return MemberPrice;
        }




        public void setMemberPrice(double memberPrice)
        {
            MemberPrice = memberPrice;
        }




        public double getVipPrice()
        {
            return VipPrice;
        }




        public void setVipPrice(double vipPrice)
        {
            VipPrice = vipPrice;
        }




        public double getSeckillPrice()
        {
            return SeckillPrice;
        }




        public void setSeckillPrice(double seckillPrice)
        {
            SeckillPrice = seckillPrice;
        }




        public String getArea()
        {
            return Area;
        }




        public void setArea(String area)
        {
            Area = area;
        }




        public String getDetails()
        {
            return Details;
        }




        public void setDetails(String details)
        {
            Details = details;
        }




        public int getViewTimes()
        {
            return ViewTimes;
        }




        public void setViewTimes(int viewTimes)
        {
            ViewTimes = viewTimes;
        }




        public int getBuyTimes()
        {
            return BuyTimes;
        }




        public void setBuyTimes(int buyTimes)
        {
            BuyTimes = buyTimes;
        } 

        public bool isIsSecondKill()
        {
            return IsSecondKill;
        }

        public void setIsSecondKill(bool isSecondKill)
        {
            IsSecondKill = isSecondKill;
        }

        public int getLimitTime()
        {
            return LimitTime;
        }

        public void setLimitTime(int limitTime)
        {
            LimitTime = limitTime;
        }

        public DateTime getAddDate()
        {
            return AddDate;
        }

        public void setAddDate(DateTime addDate)
        {
            AddDate = addDate;
        }

        public int getCount()
        {
            return Count;
        }

        public void setCount(int count)
        {
            Count = count;
        }
    }
}
