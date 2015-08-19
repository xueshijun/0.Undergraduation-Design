using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using System.Web.UI.HtmlControls;

public partial class ArticleDetails : System.Web.UI.Page
{
    BLL.Articles article = new BLL.Articles();
    BLL.SEO seo = new BLL.SEO();
    protected void Page_Load(object sender, EventArgs e)
    {
       Entity.Articles arc = article.GetArtcleObjByAID(int.Parse(Request["AID"].ToString()));
        Page.Header.Title = arc.getTitle()+"_"+arc.getClassName();  
        List<HtmlMeta> listMeta = seo.AllMeta(arc.getKeyWords(), arc.getDesription());
        HtmlHead head = (HtmlHead)Page.Header;
        head.Controls.Add(listMeta[0]);
        head.Controls.Add(listMeta[1]);   

        formContent.DataSource = article.GetArtcleByAID(int.Parse(Request["AID"].ToString()));
        formContent.DataBind();
    }
}