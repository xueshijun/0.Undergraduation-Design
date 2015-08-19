using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admins_ArticleCategorys : System.Web.UI.Page
{
    BLL.Articles article = new BLL.Articles();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["AdminID"] == null) { Response.Redirect("Default.aspx"); }
        gvArticleList.DataSource = article.GetDataSetArticleClassCount();
        gvArticleList.DataBind();

    }
    protected void gvArticleList_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.gvArticleList.PageIndex = e.NewPageIndex;
        gvArticleList.DataSource = article.GetDataSetArticleClassCount();
        gvArticleList.DataBind();
    }
    protected void btnAddClass_Click(object sender, EventArgs e)
    {
        paneInfo.Visible = panelAttention.Visible = panelError.Visible = panelSuccess.Visible = false;
        lbAttention.Text = lbError.Text = lbInfo.Text = lbSuccess.Text = "";
        if (txtClassName.Text.Trim() != "")
        {
            //if (article.AddClass(txtClassName.Text) > 0) 
            //{
            if(article.AddClass(txtClassName.Text)){
                panelSuccess.Visible = true;
                lbSuccess.Text = "添加分类“"+txtClassName.Text+"”成功！";
                txtClassName.Text = ""; 
                
                gvArticleList.DataSource = article.GetDataSetArticleClassCount();
                gvArticleList.DataBind();
            }
            else {
                panelError.Visible = true;
                lbError.Text = "添加分类“" + txtClassName.Text + "”失败！";
            }
        }
        else
        {
            panelAttention.Visible = true;
            lbAttention.Text = "分类名不可为空!";
        }
    }
}