using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Data;

namespace WService
{
    public class ItemImages
    {


        /// /* dbo.Images.ItemID, dbo.Images.ImageID, dbo.Images.BigImg, dbo.Images.SmallImg, dbo.Images.Alt
        public static List<string> getImage()
        {
            List<string> list = new List<string>();
            DataSet ds = new BLL.PicturesItem().getImages();
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                list.Add(dr[0].ToString());// dbo.Images.ItemID 
                list.Add(dr[1].ToString()); //dbo.Images.ImageID
                list.Add(dr[2].ToString());//dbo.Images.BigImg
                list.Add(dr[3].ToString());//dbo.Images.SmallImg
                list.Add(dr[4].ToString());//dbo.Images.Alt
            }
            return list;
        }

        /// /* dbo.Images.ItemID, dbo.Images.ImageID, dbo.Images.BigImg, dbo.Images.SmallImg, dbo.Images.Alt
        public static List<string> getImageByItemID(int ID)
        {
            List<string> list = new List<string>();
            DataSet ds = new BLL.PicturesItem().getImageByItemID(ID);
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                list.Add(dr[0].ToString());// dbo.Images.ItemID 
                list.Add(dr[1].ToString()); //dbo.Images.ImageID
                list.Add(dr[2].ToString());//dbo.Images.BigImg
                list.Add(dr[3].ToString());//dbo.Images.SmallImg
                list.Add(dr[4].ToString());//dbo.Images.Alt
            }
            return list;
        }
    }
}
