using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class BuyLog
    {
        private int BLogID;
        private int BItemID;
        private int BUserID;
        private double BLocationX;
        private double BLocationY;
        private String BDate;
        private bool BisHidden;
        public int getBLogID()
        {
            return BLogID;
        }
        public void setBLogID(int bLogID)
        {
            BLogID = bLogID;
        }
        public int getBItemID()
        {
            return BItemID;
        }
        public void setBItemID(int bItemID)
        {
            BItemID = bItemID;
        }
        public int getBUserID()
        {
            return BUserID;
        }
        public void setBUserID(int bUserID)
        {
            BUserID = bUserID;
        }
        public double getBLocationX()
        {
            return BLocationX;
        }
        public void setBLocationX(double bLocationX)
        {
            BLocationX = bLocationX;
        }
        public double getBLocationY()
        {
            return BLocationY;
        }
        public void setBLocationY(double bLocationY)
        {
            BLocationY = bLocationY;
        }
        public String getBDate()
        {
            return BDate;
        }
        public void setBDate(String bDate)
        {
            BDate = bDate;
        }
        public bool isBisHidden()
        {
            return BisHidden;
        }
        public void setBisHidden(bool bisHidden)
        {
            BisHidden = bisHidden;
        }
    
    }
}
