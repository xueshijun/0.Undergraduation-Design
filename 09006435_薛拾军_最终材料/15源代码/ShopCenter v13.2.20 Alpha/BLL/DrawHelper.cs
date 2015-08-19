using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;

/// <summary>
///DrawHelper 的摘要说明
/// </summary>
public class DrawHelper
{
	public DrawHelper() { }
    //生成缩略图
    public void CreateThumbnailImage(string sFileSrcPath, string sFileDstPath, int iSizeLimit)
    {
        //检测源图片是否存在
        if (File.Exists(sFileSrcPath))
        {
            //获取源图片图像
            System.Drawing.Image image = System.Drawing.Image.FromFile(sFileSrcPath);
            //定义一个大小结构
            SizeF size = new SizeF(image.Width, image.Height);
            //计算出符合要求的大小
            while (size.Width > iSizeLimit || size.Height > iSizeLimit)//51+aspx
            {
                size.Width /= 1.1F;
                size.Height /= 1.1F;
            }
            //创建缩略图图像
            Bitmap bitmap = new Bitmap(Convert.ToInt16(size.Width), Convert.ToInt16(size.Height));
            //创建缩略图绘画面
            Graphics g = Graphics.FromImage(bitmap);
            //清除整个绘画面并以透明色填充
            g.Clear(Color.Transparent);
            //定义源图像矩形区域
            Rectangle Srcrect = new Rectangle(0, 0, image.Width, image.Height);
            //定义缩略图矩形区域
            Rectangle Dstrect = new Rectangle(0, 0, bitmap.Width, bitmap.Height);
            //绘制缩略图
            g.DrawImage(bitmap, Dstrect, Srcrect, GraphicsUnit.Pixel);
            //保存为Jpeg图片
            bitmap.Save(sFileDstPath, ImageFormat.Jpeg);
            //释放对象
            g.Dispose();
            image.Dispose();
            bitmap.Dispose();
            
        }
    }
}
