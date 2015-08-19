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


using Entity;
using BLL;

public partial class Admins_CreateIndex : System.Web.UI.Page
{
    DateTime mydate = DateTime.Now;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }


    string strMsg = "";
    protected void btnCreate_Click(object sender, EventArgs e)
    { 
        Analyzer analyzer = new StandardAnalyzer();
        Directory directory = FSDirectory.GetDirectory(Server.MapPath("/Web/indexFile/"), true); 
        IndexWriter iwriter;
        if (IndexExist(directory)) {
            iwriter = new IndexWriter(directory, analyzer, false);
        } else{
            iwriter = new IndexWriter(directory, analyzer, true);
        } 
         
        Document doc;
        int count = 0;
            //"select  Items.IID,Items.ProductID,Items.Name,   Products.PID,Products.CategoryID,Products.Name,  Category.CID,Category.CName         from  Category,Items,Products,Brand    where       Products.CategoryID=Category.CID and        Products.PID=Items.ProductID";
        BLL.Subject itemInfo = new BLL.Subject();
        Entity.Subject info;
        SqlDataReader dr = itemInfo.getItemSimpleInfo(); 
       while (dr.Read())
        {  
           info = new Entity.Subject(); 
           info.setItemID(dr.GetInt32(0));
           info.setProductID(dr.GetInt32(1));
           info.setItemName(dr.GetString(2));
           info.setCategoryID(dr.GetInt32(4));
           info.setProductName(dr.GetString(5));
           info.setCategoryName(dr.GetString(7));
           //info.setBrandID(dr.GetInt32(7));
           //info.setBrandName(dr.GetString(10));
             

            doc = new Document(); 

            doc.Add(Field.Keyword("TypeID","1"));
            doc.Add(Field.Keyword("ItemID", info.getItemID().ToString()));
            doc.Add(Field.Keyword("addtime", mydate)); 
            doc.Add(Field.Text("ItemName", info.getItemName()+"站内"));
            doc.Add(Field.UnIndexed("ProductName", info.getProductName()));
            doc.Add(Field.UnIndexed("CategoryName", info.getCategoryName())); 
            doc.Add(Field.UnIndexed("visiturl", getPath(info.getCategoryID(), info.getProductID())));
            //this.lbMsg.Text= @"<div class=\"notification information png_bg\" style=\" height:40px\">"+
            //    "<a class=\"close" href=\"#\">"+
            //        @"<img alt="close" src="resources/images/icons/cross_grey_small.png"  title="Close this notification" /> </a>
            //                                        <div> <asp:Label ID="lbInfo" runat="server"></asp:Label>  
            //                                        </div>
            //                                    </div>

            this.lbMsg.Text +=count + "<ul>"
                                  + "<li>分类:" + info.getCategoryName() + "</li>"
                                  + "<li>标题:" + info.getItemName() + "</li>"
                                  + "<li><img src='../images/logo/mobile_logo.png' width='50' height='50'/></li>"
                                  + "<li>品牌:" + info.getBrandName() + "</li>"
                                  + "<li>专题:" + info.getProductName() + "</li>"
                                  + "<li>品名:<a href=" + getPath(info.getCategoryID(), info.getProductID()) + ">" + info.getItemName() + "</a></li></ul>";
            this.lbMsg.Text += "<br/>";
            //Response.Write(count + "<ul>"
            //                      + "<li>分类:" + info.getCategoryName() + "</li>"
            //                      + "<li>标题:" + info.getItemName() + "</li>"
            //                      + "<li><img src='../images/logo/mobile_logo.png' width='50' height='50'/></li>"
            //                      + "<li>品牌:" + info.getBrandName() + "</li>"
            //                      + "<li>专题:" + info.getProductName() + "</li>"
            //                      + "<li>品名:<a href=" + getPath(info.getCategoryID(), info.getProductID()) + ">" + info.getItemName() + "</a></li></ul>");

            //Response.Write(this.lbMsg.Text);
            iwriter.AddDocument(doc);
            iwriter.Optimize();
            count++; 
        } 
       dr = itemInfo.getItemJingDongInfo();
       while (dr.Read())
       {
           try { 
           doc = new Document();
           doc.Add(Field.Keyword("TypeID","2"));
           doc.Add(Field.Keyword("ItemID", dr.GetInt32(0)+""));//JID
           doc.Add(Field.Keyword("JNum", dr.GetString(1)));//JNum, 
           doc.Add(Field.Keyword("addtime", mydate));
           doc.Add(Field.Text("ItemName", dr.GetString(2)+ "京东"));//JTitle
           doc.Add(Field.UnIndexed("ProductName",dr.GetString(2)));//JTitle
           doc.Add(Field.UnIndexed("CategoryName", dr.GetString(4)));//JCategory
           doc.Add(Field.UnIndexed("visiturl", dr.GetString(3)));//JUrl
           doc.Add(Field.UnIndexed("JPrice", dr.GetString(5)));//JPrice
           this.lbMsg.Text +=count + "<ul>"
                          + "<li>分类:" + dr.GetString(4) + "</li>"
                          + "<li><img src='../images/logo/jingdong_logo.png' width='100' height='30'/></li>"
                          + "<li>品名:<a href=" + dr.GetString(3) + ">" + dr.GetString(2) + "</a></li></ul>";
           this.lbMsg.Text += "<br/>";
           //Response.Write( count + "<ul>"
           //               + "<li>分类:" + dr.GetString(4) + "</li>"
           //               + "<li><img src='../images/logo/jingdong_logo.png' width='100' height='30'/></li>" 
           //               + "<li>品名:<a href=" + dr.GetString(3) + ">" + dr.GetString(2) + "</a></li></ul>");

           iwriter.AddDocument(doc);
           }
           catch
           {

           } 
           iwriter.Optimize();
           count++; 
       } 
        iwriter.Close();
        directory.Close();
       this.lbMsg.Text += "<font color=red>建立" + count + "条索引成功!</font><br>";


        //IndexSearcher isearcher = new IndexSearcher(directory);

        //Query query;
        //query = QueryParser.Parse("促销", "ItemName", analyzer);
        ////query = QueryParser.Parse("2", "nid", analyzer);
        //Hits hits = isearcher.Search(query);

        //Response.Write("<font color=red>共找到" + hits.Length() + "条记录</font><br>");

        //for (int i = 0; i < hits.Length(); i++)
        //{ 

        //    Document hitDoc = hits.Doc(i);
        //    Response.Write("编号：" + hitDoc.Get("ItemID").ToString() + "<br>");
        //    Response.Write("分类：" + hitDoc.Get("CategoryName").ToString() + "<br>");
        //    Response.Write("标题：<a href=" + hitDoc.Get("visiturl").ToString() + ">" + hitDoc.Get("ItemName").ToString() + "</a><br>"); 
        //    Response.Write("专题：" + hitDoc.Get("ProductName").ToString() + "<br>"); 
        //}
        //isearcher.Close();
        //directory.Close();

    } 




    public static bool IndexExist(Directory indexDir)
    {
        return IndexReader.IndexExists(indexDir);
    }




    public string getPath(int CategoryID, int ProdctID)
    {
        string str = "";
        switch (CategoryID)
        {
            case 1: //男装
                str = "/Web/ManDetails.aspx?ProductID=" + ProdctID;
                break;

            case 2: //2 女装
                str = "/Web/GirlClothDetails.aspx?ProductID=" + ProdctID;
                break;
            case 3: //3 饰品
                str = "/Web/DecorationsDetails.aspx?ProductID=" + ProdctID;
                break;
            case 4: //
                str = "";
                break;
            case 5: //4 欧美
                str = "/Web/OccidentstyleDetails.aspx?ProductID=" + ProdctID;
                break;
            case 6://热卖
                str = "/Web/HotmallDetails.aspx?ProductID=" + ProdctID;
                break;
            case 7://秒杀
                str = "";
                break;
            default:
                str = "/Web/";
                break;
        }
        return str;
    }

}