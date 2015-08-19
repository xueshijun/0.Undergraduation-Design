using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace BLL
{
    public class PicturesItem
    {
        DAL.SqlHelper sqlHelper = new DAL.SqlHelper();

        public  enum enumState{ noFile,fileEx,fileSuccess,fileFailed};//0没选中文件；1扩展名出错；2成功；3失败；
        //图片上传
        public enumState AlbumImageUpLoad(FileUpload fileUpload, string urlPath, string filename)
        {
            if (fileUpload.PostedFile.FileName == "")
            { 
                return enumState.noFile;
            }
            else
            {
                string filepath = fileUpload.PostedFile.FileName; 
                string fileEx = filepath.Substring(filepath.LastIndexOf(".") + 1);//string filename = lbRandomCode.Text + "."; 
                string serverpath = urlPath + filename + "." + fileEx;                //string serverpath = Server.MapPath("~/Images/Album/") + filename + fileEx;
                if (fileEx == "jpg" || fileEx == "bmp" || fileEx == "gif" || fileEx == "JPG" || fileEx == "BMP" || fileEx == "GIF")
                {
                    fileUpload.PostedFile.SaveAs(serverpath);
                    //imgAlbumCover.ImageUrl = "~/Images/Album/" + filename + fileEx;
                    //lbImageUrl.Text = "~/Images/Album/" + filename + fileEx; 
                    //imgAlbumCover.ImageUrl = lbImageUrl.Text;
                    return enumState.fileSuccess;
                }
                else
                {
                    return enumState.fileEx;
                }
            } 
        }

        ////新增图片
        //public bool InserItemsPic(int ItemID,string BigImg,string SmallImg,string Alt) {
        //    if (sqlHelper.ExcuteCommandInt("insert into Images(ItemID,BigImg,SmallImg,Alt) values ("
        //        +ItemID+",'"+BigImg+"','"+SmallImg+"','"+Alt+"')") > 0)
        //        return true;
        //    else
        //        return false;
        //} 
        public bool InserItemsPic(Entity.PicturesItem picture)
        {
            if (sqlHelper.ExcuteCommandInt("insert into Images(ItemID,BigImg,SmallImg,Alt) values ("
                + picture.getItemID()+ ",'" 
                +picture.getBigImg()+ "','" 
                +picture.getSmallImg() + "','" 
                +picture.getAlt()+ "')") > 0)
                return true;
            else
                return false;
        }
      
        //获取最新图片
        public DataSet LatestPic() {
            return sqlHelper.GetdataSet("select top 1 * from Images order by ImageID desc");
        }

        //删除指定图片
        public bool DeletePicture(int intImageID) {
            if (sqlHelper.ExcuteCommandInt("delete from Images where ImageID=" + intImageID + "") > 0)
                return true;
            else
                return false;
        }
       
        
        //更新指定图片
        //public bool UpdatePicByID(int intImageID,int ItemID, string BigImg, string SmallImg, string Alt)
        //{
        //    if (sqlHelper.ExcuteCommandInt("update Images set ItemID="+ItemID+",BigImg='"+BigImg+"',SmallImg='"+SmallImg+"',Alt='"+Alt+"' where ImageID="+intImageID+")") > 0)
        //        return true;
        //    else
        //        return false; 
        //}
        public bool UpdatePicByID(Entity.PicturesItem picture)
        {
            if (sqlHelper.ExcuteCommandInt("update Images set ItemID=" 
                +picture.getItemID()+ ",BigImg='" 
                +picture.getBigImg() + "',SmallImg='" 
                +picture.getSmallImg()+ "',Alt='" 
                +picture.getAlt() + "' where ImageID="
                +picture.getIntImageID() + ")") > 0)
                return true;
            else
                return false;
        }
        


        #region 根据ID获取图片
        public DataSet GetImgDetails(int ItemID)
        {
            return sqlHelper.GetdataSet("select * from Images where ItemID=" + ItemID + " ");
        }
        #endregion
         


        /// <summary>
        /// 获取每个商品的图片数
        /// </summary>
        /// <returns></returns>
        public DataSet GetAllImages(){
            return sqlHelper.GetdataSet("select IID,Name,count(ImageID) as COUNT from ItemsImages group by IID,Name");
        }
         

        /// <summary>
        /// /* dbo.Images.ItemID, dbo.Images.ImageID, dbo.Images.BigImg, dbo.Images.SmallImg, dbo.Images.Alt, dbo.Items.Name, dbo.Items.IID*/
        /// </summary>
        /// <param name="ItemID"></param>
        /// <returns></returns>
        public DataSet getImageByItemID(int ItemID)
        {
            return sqlHelper.GetdataSet("select * from Images where ItemID=" + ItemID + "");
        }


        /// <summary>
        /// /* dbo.Images.ItemID, dbo.Images.ImageID, dbo.Images.BigImg, dbo.Images.SmallImg, dbo.Images.Alt, dbo.Items.Name, dbo.Items.IID*/ 
        /// </summary>
        /// <returns></returns>
        public DataSet getImages()
        {
            return sqlHelper.GetdataSet("select * from Images");
        }

         
        /// <summary>
        /// 根据图片外联商品显示
        /// /* dbo.Images.ItemID, dbo.Images.ImageID, dbo.Images.BigImg, dbo.Images.SmallImg, dbo.Images.Alt, dbo.Items.Name, dbo.Items.IID*/
        /// </summary>
        /// <returns></returns>
        public DataSet GetImageWithItems() {
            return sqlHelper.GetdataSet("select * from ImagsWithItems");
        }
         
        /// <summary>
        /// 根据图片ID获取图片以及商品名的信息
        /// </summary>
        /// <param name="intImageID"></param>
        /// <returns></returns>
        public DataSet GetImageWithItemsByItemID(int ItemID)
        {
            return sqlHelper.GetdataSet("select * from ImagsWithItems where IID=" + ItemID + "");
        }
    


        public Entity.PicturesItem GetSingleItemPic(int intImageID)
        {
            DataRowView drv = sqlHelper.GetTableValue("select * from ImagsWithItems where ImageID=" + intImageID + "");
            return new Entity.PicturesItem(
                int.Parse(drv["ImageID"].ToString()), 
                int.Parse(drv["ItemID"].ToString()));
        }

         
        /// <summary>
        /// 生成缩略图
        /// </summary>
        /// <param name="originalImagePath">源图路径（物理路径）</param>
        /// <param name="thumbnailPath">缩略图路径（物理路径）</param>
        /// <param name="width">缩略图宽度</param>
        /// <param name="height">缩略图高度</param>
        /// <param name="mode">生成缩略图的方式</param>    
        public static void MakeThumbnail(string originalImagePath, string thumbnailPath, int width, int height, string mode)
        {           
            //FileUpload fileUpload,
            //HttpPostedFile hpf = fileUpload.PostedFile;

            System.Drawing.Image originalImage = System.Drawing.Image.FromFile(originalImagePath);  
            //System.Drawing.Image originalImage = System.Drawing.Image.FromStream(hpf.InputStream, true); 

            int towidth = width;
            int toheight = height;

            int x = 0;
            int y = 0;
            int ow = originalImage.Width;
            int oh = originalImage.Height;

            switch (mode)
            {
                case "HW"://指定高宽缩放（可能变形）                
                    break;
                case "W"://指定宽，高按比例                    
                    toheight = originalImage.Height * width / originalImage.Width;
                    break;
                case "H"://指定高，宽按比例
                    towidth = originalImage.Width * height / originalImage.Height;
                    break;
                case "Cut"://指定高宽裁减（不变形）                
                    if ((double)originalImage.Width / (double)originalImage.Height > (double)towidth / (double)toheight)
                    {
                        oh = originalImage.Height;
                        ow = originalImage.Height * towidth / toheight;
                        y = 0;
                        x = (originalImage.Width - ow) / 2;
                    }
                    else
                    {
                        ow = originalImage.Width;
                        oh = originalImage.Width * height / towidth;
                        x = 0;
                        y = (originalImage.Height - oh) / 2;
                    }
                    break;
                default:
                    break;
            }

            //新建一个bmp图片
            System.Drawing.Image bitmap = new System.Drawing.Bitmap(towidth, toheight);

            //新建一个画板
            System.Drawing.Graphics g = System.Drawing.Graphics.FromImage(bitmap);

            //设置高质量插值法
            g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.High;

            //设置高质量,低速度呈现平滑程度
            g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;

            //清空画布并以透明背景色填充
            g.Clear(System.Drawing.Color.Transparent);

            //在指定位置并且按指定大小绘制原图片的指定部分
            g.DrawImage(originalImage, new System.Drawing.Rectangle(0, 0, towidth, toheight),
                new System.Drawing.Rectangle(x, y, ow, oh),
                System.Drawing.GraphicsUnit.Pixel);

            try
            {
                //以jpg格式保存缩略图
                bitmap.Save(thumbnailPath, System.Drawing.Imaging.ImageFormat.Jpeg);
            }
            catch (System.Exception e)
            {
                throw e;
            }
            finally
            {
                originalImage.Dispose();
                bitmap.Dispose();
                g.Dispose();
            }
        }
    
    
    }
}
