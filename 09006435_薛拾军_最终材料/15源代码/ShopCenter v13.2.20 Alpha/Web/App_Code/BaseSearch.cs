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


namespace So
{
    /// <summary>
    /// BaseSearch 的摘要说明
    /// </summary>
    public class BaseSearch : System.Web.UI.Page
    {
        public BaseSearch()
        {
            //
            // TODO: 在此处添加构造函数逻辑
            //
        }
        #region 变量声明
        /**/
        /// <summary>
        /// 搜索结果数据
        /// </summary>
        public DataTable Results = new DataTable();

        /**/
        /// <summary>
        /// 开始索引
        /// </summary>
        public int startAt;

        /**/
        /// <summary>
        /// First item on page (user format).
        /// </summary>
        public int fromItem;

        /**/
        /// <summary>
        /// Last item on page (user format).
        /// </summary>
        public int toItem;

        /**/
        /// <summary>
        /// 搜索的结果总数
        /// </summary>
        public int total;

        /**/
        /// <summary>
        /// 搜索所用时间
        /// </summary>
        public TimeSpan duration;

        /**/
        /// <summary>
        /// 每页显示结果项条数
        /// </summary>
        public int maxResults = 10;

        /**/
        /// <summary>
        /// 是否启用网页缓存功能
        /// </summary>
        public bool EnableCache;
        /**/
        /// <summary>
        /// 缓存URL
        /// </summary>
        public string CacheURL;
        /**/
        /// <summary>
        /// 索引文件存放的路径
        /// </summary>
        public string IndexDiectory;
        private string m_Query;
        public Lucene.Net.Store.Directory dir;

        #endregion 变量声明

        #region 取得查询目标索引的缓存
        public void GetIndexDir(string IndexKey, string IndexDiectory)
        {
            //object obj = Cache[IndexKey];
            //if (obj != null)
            //{
            //    dir = (Lucene.Net.Store.Directory)obj;
            //}
            //else
            //{
            //    dir = new Lucene.Net.Store.RAMDirectory(IndexDiectory);
            //    Cache.Insert(IndexKey, dir, null, DateTime.Now.AddMinutes(2), TimeSpan.Zero);
            //}
            dir = new Lucene.Net.Store.RAMDirectory(IndexDiectory);
        }
        #endregion

        #region 得到定长的字符串
        /**/
        /// <summary>
        /// 得到定长的字符串
        /// </summary>
        /// <param name="p_Text">原字符串</param>
        /// <param name="p_Length">长度</param>
        /// <param name="p_ExtraText">多余部分显示字符</param>
        /// <returns></returns>
        public string GetLengthText(string p_Text, int p_Length, string p_ExtraText)
        {
            return (p_Text.Length > p_Length) ? (p_Text.Substring(0, 45) + p_ExtraText) : p_Text;
        }
        #endregion

        #region 取得两个参数中的最小值
        /**/
        /// <summary>
        /// 取得两个参数中的最小值
        /// </summary>
        /// <param name="first">参数一</param>
        /// <param name="second">参数二</param>
        /// <returns>最小值</returns>
        public int smallerOf(int first, int second)
        {
            return first < second ? first : second;
        }
        #endregion

        #region 检测开始位置
        /**/
        /// <summary>
        /// Initializes startAt value. Checks for bad values.
        /// </summary>
        /// <returns></returns>
        public int initStartAt()
        {
            try
            {
                int sa = Convert.ToInt32(this.Request.Params["start"]);

                // too small starting item, return first page
                if (sa < 0)
                    return 0;

                // too big starting item, return last page
                if (sa >= total - 1)
                {
                    return lastPageStartsAt;
                }

                return sa;
            }
            catch
            {
                return 0;
            }
        }
        #endregion

        #region 最后一页的第一项

        /**/
        /// <summary>
        /// First item of the last page
        /// </summary>
        public int lastPageStartsAt
        {
            get
            {
                return pageCount * maxResults;
            }
        }
        public int pageCount
        {
            get
            {
                return (total - 1) / maxResults; // floor
            }
        }
        #endregion

        #region 取得高亮连接

        /**/
        /// <summary>
        /// 取得高亮连接
        /// </summary>
        /// <param name="p_Body">处理内容</param>
        /// <param name="p_KeyWords">关键词</param>
        /// <returns></returns>
        public string SimpleHighLighter(string p_Body, string p_KeyWords, string p_Before, string p_After, int p_MaxLength)
        {
            string[] KeyWords = p_KeyWords.Trim().Split(' ');

            //if (p_Body.Length > p_MaxLength)
            //{
            //    if (p_Body.IndexOf(KeyWords[0]) > 10)
            //    {
            //        try
            //        {
            //            if ((p_Body.Length - 10) > p_MaxLength)
            //                p_Body = p_Body.Substring(p_Body.IndexOf(KeyWords[0]) - 10, p_MaxLength) + "...";
            //            else
            //                p_Body = p_Body.Substring(p_Body.IndexOf(KeyWords[0]) - 10) + "...";
            //        }
            //        catch
            //        { }
            //    }
            //    else
            //        p_Body = p_Body.Substring(0, p_MaxLength) + "...";

            //}


            for (int i = 0; i < KeyWords.Length; i++)
            {
                p_Body = p_Body.Replace(KeyWords[i], p_Before + KeyWords[i] + p_After);

            }


            return p_Body;

        }
        #endregion

        #region 属性
        /**/
        /// <summary>
        /// 查询关键词
        /// </summary>
        public string Query
        {
            get
            {
                return m_Query;
            }
            set
            {
                m_Query = value;
            }
        }
        #endregion
    }

}