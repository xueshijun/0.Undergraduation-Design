using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;  //添加引用
public partial class Admins_CheckCode : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CreateCheckCodeImage(GenerateCheckCode());
        }
    }
    private string GenerateCheckCode()
    {
        int number;
        char code;
        string checkCode = String.Empty;

        Random random = new Random();

        for (int i = 0; i < 4; i++)
        {
            number = random.Next();

            if (number % 2 == 0)
                code = (char)('0' + (char)(number % 10));
            else
                code = (char)('A' + (char)(number % 26));

            checkCode += code.ToString();
        }

        Response.Cookies.Add(new HttpCookie("CheckCode", checkCode));

        return checkCode;
    }

    private void CreateCheckCodeImage(string checkCode)
    {
        if (checkCode == null || checkCode.Trim() == String.Empty)
            return;

        System.Drawing.Bitmap image = new System.Drawing.Bitmap((int)Math.Ceiling((checkCode.Length * 12.5)), 22);
        Graphics g = Graphics.FromImage(image);

        try
        {
            //生成随机生成器
            Random random = new Random();

            //清空图片背景色
            g.Clear(Color.White);

            //画图片的背景噪音线
            for (int i = 0; i < 2; i++)
            {
                int x1 = random.Next(image.Width);
                int x2 = random.Next(image.Width);
                int y1 = random.Next(image.Height);
                int y2 = random.Next(image.Height);

                g.DrawLine(new Pen(Color.Black), x1, y1, x2, y2); 
            }



            //for (int i = 0; i < 4; i++)
            //{
            //     //g.DrawBezier(new Pen(Color.Black,1),
            //     //   new Point(random.Next(image.Width), random.Next(image.Height)),
            //     //   new Point(random.Next(image.Width), random.Next(image.Height)),
            //     //   new Point(random.Next(image.Width), random.Next(image.Height)),
            //     //   new Point(random.Next(image.Width), random.Next(image.Height)));
            //    g.DrawEllipse(new Pen(Color.Black, 1),
            //        new Rectangle(random.Next(image.Width), random.Next(image.Height), random.Next(image.Width), random.Next(image.Height)));
            //}
            

            Font font2 = new System.Drawing.Font("Arial", 9, (System.Drawing.FontStyle.Regular)); 
            System.Drawing.Drawing2D.LinearGradientBrush brush2 = new System.Drawing.Drawing2D.LinearGradientBrush(new Rectangle(0, 0, image.Width, image.Height), Color.GreenYellow, Color.Tomato, 1.2f, true);
            g.DrawString("验证码", font2, brush2, new PointF(2, 2));

            Font font = new System.Drawing.Font("Arial", 12, (System.Drawing.FontStyle.Bold));
            System.Drawing.Drawing2D.LinearGradientBrush brush = new System.Drawing.Drawing2D.LinearGradientBrush(new Rectangle(0, 0, image.Width, image.Height), Color.Blue, Color.DarkRed, 1.2f, true);
          
           g.DrawString(checkCode, font, brush, 2, 2);

            //画图片的前景噪音点
            for (int i = 0; i < 130; i++)
            {
                int x = random.Next(image.Width);
                int y = random.Next(image.Height);

                image.SetPixel(x, y, Color.FromArgb(random.Next()));
            }

            //画图片的边框线
            g.DrawRectangle(new Pen(Color.Silver), 0, 0, image.Width - 1, image.Height - 1);

            System.IO.MemoryStream ms = new System.IO.MemoryStream();
            image.Save(ms, System.Drawing.Imaging.ImageFormat.Gif);
            Response.ClearContent();
            Response.ContentType = "image/Gif";
            Response.BinaryWrite(ms.ToArray());
        }
        finally
        {
            g.Dispose();
            image.Dispose();
        }
    }
}