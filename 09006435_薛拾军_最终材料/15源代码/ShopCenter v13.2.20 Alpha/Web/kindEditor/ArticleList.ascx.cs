using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class kindEditor_ArticleList : System.Web.UI.UserControl
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
            ddlArticleClass.Items.Add(new ListItem("全部", "0"));
            ddlArticleClass.Items[0].Selected = true;
            gvArticleList.DataSource = article.GetArticleList();
            gvArticleList.DataBind();
        }
    }
    //翻页
    protected void gvArticleList_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.gvArticleList.PageIndex = e.NewPageIndex;
        if (int.Parse(ddlArticleClass.SelectedItem.Value) == 0)
        {
            gvArticleList.DataSource = article.GetArticleList();
            gvArticleList.DataBind();
        }
        else
        {
            gvArticleList.DataSource = article.GetdsArticleListByCID(int.Parse(ddlArticleClass.SelectedItem.Value));
            gvArticleList.DataBind();
        }
    }
    //应用筛选文章类别
    protected void btnArticleClass_Click(object sender, EventArgs e)
    {
        if (int.Parse(ddlArticleClass.SelectedItem.Value) == 0)
        {
            gvArticleList.DataSource = article.GetArticleList();
            gvArticleList.DataBind();
        }
        else
        {
            gvArticleList.DataSource = article.GetdsArticleListByCID(int.Parse(ddlArticleClass.SelectedItem.Value));
            gvArticleList.DataBind();
        }

    }
}