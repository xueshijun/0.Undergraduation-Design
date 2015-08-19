using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class LoginLog
    {
        private int LLogID; 
        private int LUserID;
        private double LLocationX;
        private double LLocationY;
        private String LDate;
        private bool LisHidden;

        public int getLLogID()
        {
            return LLogID;
        }
        public void setLLogID(int LLogID)
        {
            this.LLogID = LLogID;
        } 
        public int getLUserID()
        {
            return LUserID;
        }
        public void setLUserID(string LUserID)
        {
            if (LUserID == null || LUserID.Length == 0) {
                this.LUserID = -1;
            }
            else
            {
                this.LUserID = Int32.Parse(LUserID);
            }
        }
        public double getLLocationX()
        {
            return LLocationX;
        }
        public void setLLocationX(string LLocationX)
        {
            if (LLocationX == null || LLocationX.Length == 0) {
                this.LLocationX = 0;
            }
            else {
                this.LLocationX = double.Parse(LLocationX);
            } 
        }
        public double getLLocationY()
        {
            return LLocationY;
        }
        public void setLLocationY(string LLocationY)
        {
            if (LLocationY == null || LLocationY.Length == 0)
            {
                this.LLocationY = 0;
            }
            else
            {
                this.LLocationY = double.Parse(LLocationY);
            } 
        }
        public String getLDate()
        {
            return LDate;
        }
        public void setLDate(String LDate)
        {
            this.LDate = LDate;
        }
        public bool isLisHidden()
        {
            return LisHidden;
        }
        public void setLisHidden(string LisHidden)
        {
            if (LisHidden == null || LisHidden.Length == 0) {
                this.LisHidden = false;
            }
            else {

                this.LisHidden = bool.Parse(LisHidden);
            }
        }
    }
}
