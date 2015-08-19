using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

using Lucene;
using Lucene.Net;
using Lucene.Net.Analysis;
using Lucene.Net.Analysis.Cn;

using Lucene.Net.Analysis.Standard;
using Lucene.Net.Documents;
using Lucene.Net.Index;
using Lucene.Net.QueryParsers;
//using Lucene.Net.QueryParsers.Precedence;
using Lucene.Net.Search;
using Lucene.Net.Search.Spans;
using Lucene.Net.Store;
using Lucene.Net.Util;

public partial class Admins_Results : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //if (Session["KeyWords"] == null ? false : true)
        //{
        //    Response.Redirect("Search.aspx");
        //}
        String text = Session["KeyWords"].ToString();
        ChineseAnalyzer analyzer = new ChineseAnalyzer();
        TokenStream ts = analyzer.TokenStream("ItemName", new System.IO.StringReader(text));
        Lucene.Net.Analysis.Token token;
        try
        {
            int n = 0;
            while ((token = ts.Next()) != null)
            {
                this.lbMsg.Text += (n++) + "->" + token.TermText() + " " + token.StartOffset() + " " + token.EndOffset() + " " + token.Type() + "<br>";
                 //   Response.Write((n++) + "->" + token.TermText() + " " + token.StartOffset() + " "
                 //+ token.EndOffset() + " " + token.Type() + "<br>");
            }
        }
        catch
        {
            this.lbMsg.Text = "wrong";
        } 

       // Analyzer analyzer = new StandardAnalyzer();
        Directory directory = FSDirectory.GetDirectory(Server.MapPath("/indexFile/"), false);

        IndexSearcher isearcher = new IndexSearcher(directory);

        Query query;
        query = QueryParser.Parse(Session["KeyWords"].ToString(), "ItemName", analyzer);
        //query = QueryParser.Parse("2", "nid", analyzer);
        Hits hits = isearcher.Search(query);
        this.lbMsg.Text += "<font color=red>共找到" + hits.Length() + "条记录</font><br>";
        //Response.Write("<font color=red>共找到" + hits.Length() + "条记录</font><br>");

        for (int i = 0; i < hits.Length(); i++)
        {

            Document hitDoc = hits.Doc(i);
            this.lbMsg.Text += "编号：" + hitDoc.Get("ItemID").ToString() + "<br>"
                + "分类：" + hitDoc.Get("CategoryName").ToString() + "<br>"
                + "专题：" + hitDoc.Get("ProductName").ToString() + "<br>"
                + "标题：<a href=" + hitDoc.Get("visiturl").ToString() + ">" + hitDoc.Get("ItemName").ToString() + "</a><br>";
            //Response.Write("编号：" + hitDoc.Get("ItemID").ToString() + "<br>");
            //Response.Write("分类：" + hitDoc.Get("CategoryName").ToString() + "<br>");
            //Response.Write("标题：<a href=" + hitDoc.Get("visiturl").ToString() + ">" + hitDoc.Get("ItemName").ToString() + "</a><br>");
            //Response.Write("专题：" + hitDoc.Get("ProductName").ToString() + "<br>");
        }
        isearcher.Close();
        directory.Close();
    }
}