using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class ItemInfo
    {
        //	"select  Products.PID,Products.CategoryID,Products.Name,Category.CID,Category.CName 
        //	from Products,Category 
        //	where Products.CategoryID=Category.CID"
        private int CategoryID;
        private string CategoryName;
        private int ProductID;
        private string ProductName;

        //	select Items.IID,Items.ProductID,Items.BrandID,Items.Name from Items,Products,Brand
        //	where Products.PID=Items.ProductID
        //	Items.BrandID=Brand.BID
        private int ItemID;
        private string ItemName;

        //	Brand.BID,Brand.BrandName
        private int BrandID;
        private string BrandName;
        public int getCategoryID()
        {
            return CategoryID;
        }
        public void setCategoryID(int categoryID)
        {
            CategoryID = categoryID;
        }
        public string getCategoryName()
        {
            return CategoryName;
        }
        public void setCategoryName(string categoryName)
        {
            CategoryName = categoryName;
        }
        public int getProductID()
        {
            return ProductID;
        }
        public void setProductID(int productID)
        {
            ProductID = productID;
        }
        public string getProductName()
        {
            return ProductName;
        }
        public void setProductName(string productName)
        {
            ProductName = productName;
        }
        public int getItemID()
        {
            return ItemID;
        }
        public void setItemID(int itemID)
        {
            ItemID = itemID;
        }
        public string getItemName()
        {
            return ItemName;
        }
        public void setItemName(string itemName)
        {
            ItemName = itemName;
        }
        public int getBrandID()
        {
            return BrandID;
        }
        public void setBrandID(int brandID)
        {
            BrandID = brandID;
        }
        public string getBrandName()
        {
            return BrandName;
        }
        public void setBrandName(string brandName)
        {
            BrandName = brandName;
        }
    }

}
