using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class Brands
    {
        private int BID;
        private string BrandName;
        private string Img;

        public Brands() { }

        public int getBID()
        {
            return BID;
        }

        public void setBID(int bID)
        {
            BID = bID;
        }

        public string getBrandName()
        {
            return BrandName;
        }

        public void setBrandName(string brandName)
        {
            BrandName = brandName;
        }

        public string getImg()
        {
            return Img;
        }

        public void setImg(string img)
        {
            Img = img;
        }
      
      
    }
}
