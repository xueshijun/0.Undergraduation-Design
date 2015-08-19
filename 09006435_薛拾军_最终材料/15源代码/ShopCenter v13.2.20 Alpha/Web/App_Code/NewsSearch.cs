using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;



using System.IO;
using System.Text.RegularExpressions;
using Lucene.Net.Analysis.Standard;
using Lucene.Net.Documents;
using Lucene.Net.QueryParsers;
using Lucene.Net.Search;
using Lucene.Net.Highlight;
using Lucene.Net.Analysis;
using Lucene.Net.Index;



namespace So.News
{
    /// <summary>
    /// NewsSearch 的摘要说明
    /// </summary>
    public class NewsSearch : BaseSearch
    {
        public NewsSearch()
        {
            //this.IndexDiectory = ConfigurationManager.AppSettings["NewsIndexPath"];
            this.IndexDiectory = Server.MapPath("index");
        }

        #region 处理搜索并将信息转换为可显示结果数据源
        /// <summary>
        /// Does the search and stores the information about the results.
        /// </summary>
        public void search()
        {
            // 索引目录
            //string indexDirectory = Server.MapPath(ConfigurationSettings.AppSettings["EnableCache"] );  
            //创建一个Searcher用于搜索

            //记录查询开始的时间
            DateTime start = DateTime.Now;
            this.GetIndexDir("HDC.News", IndexDiectory);
            IndexSearcher searcher = new IndexSearcher(dir);
            //从"body"字段搜索
            //Console.WriteLine(this.Query);

            Lucene.Net.Analysis.Analyzer OneAnalyzer = new StandardAnalyzer();
            QueryParser parser = new QueryParser("newsContent", OneAnalyzer);
            Query query = parser.Parse(this.Query);
            
            //创建结果记录集
            //定义字段
            this.Results.Columns.Add("ArticleID", typeof(int));
            this.Results.Columns.Add("ArticleClassID", typeof(int));
            this.Results.Columns.Add("className", typeof(string));
            this.Results.Columns.Add("titleImg", typeof(string));
            this.Results.Columns.Add("updateTime", typeof(DateTime));
            this.Results.Columns.Add("source", typeof(string));
            this.Results.Columns.Add("title", typeof(string));
            this.Results.Columns.Add("summary", typeof(string));

            Sort sort = new Sort(new SortField("ArticleID", SortField.DOC, true));
            //Hits是搜索结果记录集,不过是Lucene自己的格式,需要格式化成标准输出
            Hits hits = searcher.Search(query, sort);

            //结果个数
            this.total = hits.Length();

            ///创建高亮显示
            //Highlighter highlighter = new Highlighter(new SimpleHTMLFormatter("<font color="#C60A00">", "</font>"), new QueryScorer(query));
            //highlighter.TextFragmenter = new SimpleFragmenter(160);
            //highlighter.MaxDocBytesToAnalyze = 256;

            // initialize startAt
            this.startAt = initStartAt();

            // how many items we should show - less than defined at the end of the results
            int resultsCount = smallerOf(total, this.maxResults + this.startAt);

            for (int i = startAt; i < resultsCount; i++)
            {
                Document doc = hits.Doc(i);
                DataRow row = this.Results.NewRow();

                row["ArticleID"] = Convert.ToInt32(doc.Get("ArticleID"));
                row["ArticleClassID"] = Convert.ToInt32(doc.Get("ArticleClassID"));
                string summary = doc.Get("summary");

                row["summary"] = this.SimpleHighLighter(summary, this.Query,"<font color='#C60A00'>", "</font>",226);
                row["className"] = doc.Get("className");
                row["titleImg"] = doc.Get("titleImg");
                row["updateTime"] = Convert.ToDateTime(doc.Get("updateTime"));
                row["source"] = doc.Get("source");
                row["title"] = doc.Get("title");
                this.Results.Rows.Add(row);
            }
            searcher.Close();

            // result information

            this.fromItem = startAt + 1;
            this.toItem = smallerOf(startAt + maxResults, total);
            //记录查询使用的时间
            this.duration = DateTime.Now - start;
        }
        #endregion

        #region 页面底航连接
        /// <summary>
        /// 页面底航连接
        /// </summary>
        public DataTable Paging
        {
            get
            {
                int pageNumber = (startAt + maxResults - 1) / maxResults;

                DataTable dt = new DataTable();
                dt.Columns.Add("html", typeof(string));

                //增加第一页链接
                DataRow tar = dt.NewRow();
                if (startAt >= maxResults)
                    tar["html"] = "<EM><a href='/News/?q=" + Server.UrlEncode(this.Query) + "&start=" + (startAt - maxResults) + "'><IMG src='images/b_pre.gif'></a></EM>";
                else
                    tar["html"] = "<EM><IMG src='images/b_pre.gif'></EM>";
                dt.Rows.Add(tar);


                int previousPagesCount = 7;

                DataRow ar = dt.NewRow();
                ar["html"] = pagingItemHtml(startAt, pageNumber + 1, false);
                dt.Rows.Add(ar);

                for (int i = pageNumber - 1; i >= 0 && i >= pageNumber - previousPagesCount; i--)
                {
                    int step = i - pageNumber;
                    DataRow r = dt.NewRow();
                    r["html"] = pagingItemHtml(startAt + (maxResults * step), i + 1, true);

                    dt.Rows.InsertAt(r, 1);
                }

                int nextPagesCount = 8;
                for (int i = pageNumber + 1; i <= pageCount && i <= pageNumber + nextPagesCount; i++)
                {
                    int step = i - pageNumber;
                    DataRow r = dt.NewRow();
                    r["html"] = pagingItemHtml(startAt + (maxResults * step), i + 1, true);

                    dt.Rows.Add(r);
                }

                //增加第一页链接
                DataRow far = dt.NewRow();
                if (pageNumber < pageCount)
                    far["html"] = "<EM><a class='blue1' href='/News/?q=" + Server.UrlEncode(this.Query) + "&start=" + (startAt + maxResults) + "'><IMG src='images/b_nextpage.gif'></a></EM>";
                else
                    far["html"] = "<EM><IMG src='images/b_nextpage.gif'></EM>";
                dt.Rows.Add(far);
                return dt;
            }
        }


        #region 页面连接列表

        /// <summary>
        /// 页面连接列表
        /// </summary>
        /// <param name="start">开始</param>
        /// <param name="number">显示数量</param>
        /// <param name="active">活动</param>
        /// <returns></returns>
        public string pagingItemHtml(int start, int number, bool active)
        {

            if (active)
                return "<VAR><a href='/News/?q=" + Server.UrlEncode(this.Query) + "&start=" + start + "'>" + number + "</a></VAR>";
            else
                return "<VAR class=on>" + number + "</VAR>";
        }
        #endregion


        #endregion
    }
}