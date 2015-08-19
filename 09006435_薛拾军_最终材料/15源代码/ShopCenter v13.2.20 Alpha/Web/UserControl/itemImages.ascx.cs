using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_itemImages : System.Web.UI.UserControl
{

    BLL.PicturesItem picture = new BLL.PicturesItem();

    protected void Page_Load(object sender, EventArgs e)
    {
        gvImage.DataSource = picture.GetAllImages();
        gvImage.DataBind();
    }
    //选择商品
    protected void gvImage_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        ClearMethod();
        paneInfo.Visible = true;
        lbImageID.Text = "";
        lbItemId.Text = e.CommandArgument.ToString();
        switch (e.CommandName)
        {
            case "Modify":
                gvDetails.DataSource = picture.getImageByItemID(int.Parse(e.CommandArgument.ToString()));
                gvDetails.DataBind();
                lbInfo.Text = "处于图片修改模式！";
                btnSubmit.Text = "修改";
                btnSubmit.Enabled = false;
                break;
            case "Add":
                btnSubmit.Enabled = true;
                gvDetails.DataSource = null;
                gvDetails.DataBind();
                lbInfo.Text = "处于新增商品图片模式！";
                btnSubmit.Text = "新增";
                break;
        }
    }
    //修改商品图片（更新/删除）
    protected void gvDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "shanchu":
                btnSubmit.Enabled = true;
                lbImageID.Text = e.CommandArgument.ToString();
                if (picture.DeletePicture(int.Parse(e.CommandArgument.ToString())))
                {
                    panelSuccess.Visible = true;
                    gvDetails.DataSource = picture.getImageByItemID(int.Parse(lbItemId.Text));
                    gvDetails.DataBind();
                    lbSuccess.Text = "删除图片成功!";
                }
                else
                {
                    panelError.Visible = true;
                    lbError.Text = "删除图片失败!";
                }
                break;
            case "Modify":
                btnSubmit.Enabled = true;
                lbImageID.Text = e.CommandArgument.ToString();
                break;
        }
    }


    //图片上传
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        ClearMethod();
        HttpPostedFile hpf = uploadImage.PostedFile;
        //取得文件名，不含路径
        char[] splitChar = { '\\' };
        string[] FilenameArray = hpf.FileName.Split(splitChar);
        string Filename = FilenameArray[FilenameArray.Length - 1].ToLower();
        //将用户输入的水印文字处理
        //string sMessage = lineStr(TextBox3.Text.Trim().ToString(), 20);

        if (hpf.FileName.Length < 1)
        {
            panelAttention.Visible = true;
            lbAttention.Text = "请选择你要上传的图片文件";
            return;
        }
        if (hpf.ContentType != "image/jpeg" && hpf.ContentType != "image/gif")
        {
            panelAttention.Visible = true;
            lbAttention.Text = "只允许上传JPEG GIF文件";
            return;
        }
        else
        {
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append(DateTime.Now.Year.ToString());
            sb.Append(DateTime.Now.Month.ToString());
            sb.Append(DateTime.Now.Day.ToString());
            sb.Append(DateTime.Now.Hour.ToString());
            sb.Append(DateTime.Now.Minute.ToString());
            sb.Append(DateTime.Now.Second.ToString());

            if (Filename.ToLower().EndsWith("gif"))
                sb.Append(".gif");
            else if (Filename.ToLower().EndsWith("jpg"))
                sb.Append(".jpg");
            else if (Filename.ToLower().EndsWith("jpeg"))
                sb.Append(".jpeg");
            Filename = sb.ToString();

            //保存图片到服务器上
            try
            {
                hpf.SaveAs(Server.MapPath("~") + "/images/onsale/wear/big_" + Filename);
            }
            catch (Exception ee)
            {
                panelAttention.Visible = true;
                lbAttention.Text = "上传图片失败，原因：" + ee.Message;
                return;
            }

            //生成缩略图
            //原始图片名称
            string originalFilename = hpf.FileName;
            //生成高质量图片名称
            string strFile = Server.MapPath("~") + "/images/onsale/wear/small/small_" + Filename;

            //从文件获取图片对象
            System.Drawing.Image image = System.Drawing.Image.FromStream(hpf.InputStream, true);

            Double Width = Double.Parse(TextBox1.Text.Trim());
            Double Height = Double.Parse(TextBox2.Text.Trim());
            System.Double newWidth, newHeight;
            if (image.Width > image.Height)
            {
                newWidth = Width;
                newHeight = image.Height * (newWidth / image.Width);
            }
            else
            {
                newHeight = Height;
                newWidth = image.Width * (newHeight / image.Height);
            }
            if (newWidth > Width)
                newWidth = Width;
            if (newHeight > Height)
                newHeight = Height;
            System.Drawing.Size size = new System.Drawing.Size((int)newWidth, (int)newHeight); //设置图片的宽度和高度
            System.Drawing.Image bitmap = new System.Drawing.Bitmap(size.Width, size.Height);  //新建bmp图片
            System.Drawing.Graphics g = System.Drawing.Graphics.FromImage(bitmap);  //新建画板
            g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.High;  //制定高质量插值法
            g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;   //设置高质量、低速度呈现平滑程度
            g.Clear(System.Drawing.Color.White);    //清空画布
            //在制定位置画图
            g.DrawImage(image, new System.Drawing.Rectangle(0, 0, bitmap.Width, bitmap.Height), new System.Drawing.Rectangle(0, 0, image.Width, image.Height), System.Drawing.GraphicsUnit.Pixel);


            //文字水印
            System.Drawing.Graphics testGrahpics = System.Drawing.Graphics.FromImage(bitmap);
            System.Drawing.Font font = new System.Drawing.Font("宋体", 10);
            System.Drawing.Brush brush = new System.Drawing.SolidBrush(System.Drawing.Color.Black);

            //分行
            string sInput = TextBox3.Text.Trim().ToString();    //获取输入的水印文字
            int coloum = Convert.ToInt32(TextBox4.Text);    //获取每行的字符数
            //利用循环，来依次输出
            for (int i = 0, j = 0; i < sInput.Length; i += coloum, j++)
            {
                //若要修改水印文字在照片上的位置，可将20修改成你想要的任何值
                if (j != sInput.Length / coloum)
                {
                    string s = sInput.Substring(i, coloum);
                    testGrahpics.DrawString(s, font, brush, 20, 20 * (i / coloum + 1));
                }
                else
                {
                    string s = sInput.Substring(i, sInput.Length % coloum);
                    testGrahpics.DrawString(s, font, brush, 20, 20 * (j + 1));

                }
            }
            testGrahpics.Dispose();
            //保存缩略图c
            try
            {
                bitmap.Save(strFile, System.Drawing.Imaging.ImageFormat.Jpeg);
            }
            catch (Exception ex)
            {
                paneInfo.Visible = true;
                lbInfo.Text = "保存缩略图失败" + ex.Message;
            }
            //释放资源
            g.Dispose();
            bitmap.Dispose();
            image.Dispose();
        }
         
            Entity.PicturesItem pic=new Entity.PicturesItem();
            pic.setItemID(int.Parse(lbItemId.Text));
           // pic.setIntImageID(int.Parse(lbImageID.Text));
            pic.setBigImg("images/onsale/wear/big_" + Filename);
            pic.setSmallImg("images/onsale/wear/small/small_" + Filename);
            pic.setAlt("");

        switch (btnSubmit.Text)
        {
            case "新增"://新增模式
                if (picture.InserItemsPic(pic))
                {
                    panelSuccess.Visible = true;
                    lbSuccess.Text = "新增图片成功!";
                }
                else
                {
                    panelError.Visible = true;
                    lbError.Text = "新增图片失败！";
                }
                break;
            case "修改"://修改模式
                //int.Parse(lbImageID.Text), int.Parse(lbItemId.Text), "images/onsale/wear/big_" + Filename, "images/onsale/wear/small/small_" + Filename, ""
                if (picture.UpdatePicByID(pic))
                {
                    panelSuccess.Visible = true;
                    lbSuccess.Text = "修改图片成功!";
                }
                else
                {
                    panelError.Visible = true;
                    lbError.Text = "修改图片失败！";
                }
                break;

        }

    }
    //换页
    protected void gvImage_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.gvImage.PageIndex = e.NewPageIndex;
        gvImage.DataSource = picture.GetAllImages();
        gvImage.DataBind();
    }
    //换页
    protected void gvDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvDetails.PageIndex = e.NewPageIndex;
        gvDetails.DataSource = picture.getImageByItemID(int.Parse(lbItemId.Text));
        gvDetails.DataBind();
    }

    public void ClearMethod()
    {

        panelAttention.Visible = panelError.Visible = panelSuccess.Visible = false;
        lbSuccess.Text = lbError.Text = lbAttention.Text = "";
    }
}