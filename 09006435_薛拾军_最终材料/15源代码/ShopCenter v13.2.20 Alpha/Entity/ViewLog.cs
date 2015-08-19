using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class ViewLog
    {
        private int VLogID;
        private int VItemID;
        private int VUserID;
        private double VLocationX;
        private double VLocationY;
        private string VDate;
        private bool VisHidden;

        public int getVLogID()
        {
            return VLogID;
        }
        public void setVLogID(int bLogID)
        {
            VLogID = bLogID;
        }
        public int getVItemID()
        {
            return VItemID;
        }
        public void setVItemID(string VItemID)
        { 
            if (VItemID == null || VItemID.Length == 0)
            {
                this.VItemID = -1;
            }
            else
            {
                this.VItemID = Int32.Parse(VItemID);
            }
        }
        public int getVUserID()
        {
            return VUserID;
        }
        public void setVUserID(string VUserID)
        { 
            if (VUserID == null || VUserID.Length == 0)
            {
                this.VUserID = -1;
            }
            else
            {
                this.VUserID = Int32.Parse(VUserID);
            }
        }
        public double getVLocationX()
        {
            return VLocationX;
        }
        public void setVLocationX(string VLocationX)
        {
            if (VLocationX == null || VLocationX.Length == 0)
            {
                this.VLocationX = 0;
            }
            else
            {
                this.VLocationX = double.Parse(VLocationX);
            }

        }
        public double getVLocationY()
        {
            return VLocationY;
        }
        public void setVLocationY(string VLocationY)
        {
            if (VLocationY == null || VLocationY.Length == 0)
            {
                this.VLocationY = 0;
            }
            else
            {
                this.VLocationY = double.Parse(VLocationY);
            }
        }
        public String getVDate()
        {
            return VDate;
        }
        public void setVDate(string VDate)
        {
            this.VDate = VDate;
        }
        public bool isVisHidden()
        {
            return VisHidden;
        }
        public void setVisHidden(string VisHidden)
        { 
            if (VisHidden == null || VisHidden.Length == 0)
            {
                this.VisHidden = false;
            }
            else
            {

                this.VisHidden = bool.Parse(VisHidden);
            }
        }
    
    }
}
