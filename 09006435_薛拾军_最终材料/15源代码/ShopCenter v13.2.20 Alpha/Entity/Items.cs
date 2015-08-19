using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class Items
    {
        private int ItemID;//2013.1.5
       private int ProductID;
       private int BrandID;
       private string Name;
       private string AgoraPrice;
       private string MemberPrice;
       private string VipPrice;
       private string SeckillPrice;
       private string Area;
       private string Fresh;//2013.1.5
       private int ClickTimes;//2013.1.5
       private int Sale;//2013.1.5
       private int Remant;//2013.1.5
       private int SmallImg;//2013.1.5
       private int BigImg;//2013.1.5 
       private string Details;//2013.1.5 
       private int ViewTimes;//2013.1.5 
       private int BuyTimes;//2013.1.5 

       private string Days;
       private string Hours;
       private string Minutes;
       private string Seconds;
       private string IsSecondKill;
       private string LimitTime;//2013.1.5 
        public Items() { }
        public Items(int ProductID, int BrandID, string Name, string AgoraPrice, string MemberPrice, string VipPrice, string SeckillPrice, string Area, string Details, string Days, string Hours, string Minutes, string Seconds, string IsSecondKill)
        {
            this.ProductID = ProductID;
            this.BrandID = BrandID;
            this.Name = Name;
            this.AgoraPrice = AgoraPrice;
            this.MemberPrice = MemberPrice;
            this.VipPrice = VipPrice;
            this.SeckillPrice = SeckillPrice;
            this.Area = Area;
            this.Details = Details;
            this.Days = Days;
            this.Hours = Hours;
            this.Minutes = Minutes;
            this.Seconds = Seconds;
            this.IsSecondKill = IsSecondKill;
        }
        public void setItemID(int ItemID)
        {
            this.ItemID = ItemID;
        }
        public int getItemID()
        {
            return this.ItemID;
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

        public string getName()
        {
            return Name;
        }

        public void setName(string name)
        {
            Name = name;
        }

        public string getAgoraPrice()
        {
            return AgoraPrice;
        }

        public void setAgoraPrice(string agoraPrice)
        {
            AgoraPrice = agoraPrice;
        }

        public string getMemberPrice()
        {
            return MemberPrice;
        }

        public void setMemberPrice(string memberPrice)
        {
            MemberPrice = memberPrice;
        }

        public string getVipPrice()
        {
            return VipPrice;
        }

        public void setVipPrice(string vipPrice)
        {
            VipPrice = vipPrice;
        }

        public string getSeckillPrice()
        {
            return SeckillPrice;
        }

        public void setSeckillPrice(string seckillPrice)
        {
            SeckillPrice = seckillPrice;
        }

        public string getArea()
        {
            return Area;
        }

        public void setArea(string area)
        {
            Area = area;
        }

        public string getDetails()
        {
            return Details;
        }

        public void setDetails(string details)
        {
            Details = details;
        }

        public string getDays()
        {
            return Days;
        }

        public void setDays(string days)
        {
            Days = days;
        }

        public string getHours()
        {
            return Hours;
        }

        public void setHours(string hours)
        {
            Hours = hours;
        }

        public string getMinutes()
        {
            return Minutes;
        }

        public void setMinutes(string minutes)
        {
            Minutes = minutes;
        }

        public string getSeconds()
        {
            return Seconds;
        }

        public void setSeconds(string seconds)
        {
            Seconds = seconds;
        }

        public string getIsSecondKill()
        {
            return IsSecondKill;
        }

        public void setIsSecondKill(string isSecondKill)
        {
            IsSecondKill = isSecondKill;
        } 
    }
}
