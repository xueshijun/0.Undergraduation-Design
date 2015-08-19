using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public  class PicturesItem
    {
       private int intImageID;
       private int ItemID;
       private string BigImg;
       private string SmallImg;
       private string Alt;

       private float Width;//2013.1.5
       private float Height;//2013.1.5


        public PicturesItem() { }
        public PicturesItem(int intImageID, int ItemID)
        {
            this.intImageID = intImageID;
            this.ItemID = ItemID;
        }

        public int getIntImageID()
        {
            return intImageID;
        }

        public void setIntImageID(int intImageID)
        {
            this.intImageID = intImageID;
        }

        public int getItemID()
        {
            return ItemID;
        }

        public void setItemID(int itemID)
        {
            ItemID = itemID;
        }

        public string getBigImg()
        {
            return BigImg;
        }

        public void setBigImg(string bigImg)
        {
            BigImg = bigImg;
        }

        public string getSmallImg()
        {
            return SmallImg;
        }

        public void setSmallImg(string smallImg)
        {
            SmallImg = smallImg;
        }

        public string getAlt()
        {
            return Alt;
        }

        public void setAlt(string alt)
        {
            Alt = alt;
        }
    
    }
}
