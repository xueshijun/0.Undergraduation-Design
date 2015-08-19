using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admins_ArticleAddForm : System.Web.UI.Page
{
    BLL.Articles article = new BLL.Articles();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlArticleClass.DataSource = article.GetDataSetArticleClass();
            ddlArticleClass.DataTextField = "ClassName";
            ddlArticleClass.DataValueField = "ClassID";
            ddlArticleClass.DataBind();
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        paneInfo.Visible = panelAttention.Visible = panelError.Visible = panelSuccess.Visible = false;
        lbAttention.Text = lbError.Text = lbInfo.Text = lbSuccess.Text = "";
        if (txtTitle.Text.Trim() == "" || Textarea1.Value.Trim() == "")
        {
            panelAttention.Visible = true;
            lbAttention.Text = "标题或者文章内容不可为空!";
        }
        else
        {
            Entity.Articles arc = new Entity.Articles();
            arc.setClassID(int.Parse(ddlArticleClass.SelectedValue.ToString()));
            arc.setTitle(txtTitle.Text);
            arc.setKeyWords(txtKeyWords.Text);
            arc.setDesription(txtDescription.Text); 
            arc.setContents(Textarea1.Value.Trim());
            arc.setPubDate(DateTime.Now.ToString());
            arc.setViewTimes(1);
            arc.setAuthor("admin");

            if (article.InsertArticle(arc) > 0) 
            {
                panelSuccess.Visible = true;
                lbSuccess.Text = "新增成功！";
                txtDescription.Text =   txtKeyWords.Text =  txtTitle.Text =  Textarea1.Value = "";
            }
            else
            {
                panelError.Visible = true;
                lbError.Text = "添加失败！";
            }
        }
    }
}