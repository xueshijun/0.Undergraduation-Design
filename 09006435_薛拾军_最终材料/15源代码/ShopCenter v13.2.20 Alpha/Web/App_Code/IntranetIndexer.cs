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



/// <summary>
/// IntranetIndexer 的摘要说明
/// </summary>
public class IntranetIndexer
{
    public IntranetIndexer() { }
    ////索引写入器
    private IndexWriter writer;
    //要写入索引的文件的根目录
    private string docRootDirectory;
    //要匹配的文件格式
    private string[] pattern;
    /// 初始化一个索引写入器writer，directory为创建索引的目录，true代表如果不存在索引文件将重新创建索引文件，如果已经存在索引文件将覆写索引文件
    /// 传入的要创建索引的目录，注意是字符串值，如果目录不存在，他将会被自动创建
    public IntranetIndexer(string directory)
    {
        writer = new IndexWriter(directory, new StandardAnalyzer(), true);
        writer.SetUseCompoundFile(true);
    }
    public void AddDirectory(DirectoryInfo directory, string[] pattern)
    {
        this.docRootDirectory = directory.FullName;
        this.pattern = pattern;
        addSubDirectory(directory);
    }
    private void addSubDirectory(DirectoryInfo directory)
    {
        for (int i = 0; i < directory.GetFiles().Length; i++)
        {
            foreach (FileInfo fi in directory.GetFiles(pattern[i]))
            {
                AddHtmlDocument(fi.FullName);
            }
        }
        foreach (DirectoryInfo di in directory.GetDirectories())
        {
            addSubDirectory(di);
        }
    }

    public void AddHtmlDocument(string path)
    {
        string exname = Path.GetExtension(path);
        Document doc = new Document();

        string html;
        if (exname.ToLower() == ".html" || exname.ToLower() == ".htm" || exname.ToLower() == ".txt")
        {
            using (StreamReader sr = new StreamReader(path, System.Text.Encoding.Default))
            {
                html = sr.ReadToEnd();
            }
        }
        else
        {
            using (StreamReader sr = new StreamReader(path, System.Text.Encoding.Unicode))
            {
                html = sr.ReadToEnd();
            }
        }

        int relativePathStartsAt = this.docRootDirectory.EndsWith("\\") ? this.docRootDirectory.Length : this.docRootDirectory.Length + 1;
        string relativePath = path.Substring(relativePathStartsAt);
        string title = Path.GetFileName(path);

        //判断若是网页则去标签否则不用
        if (exname.ToLower() == ".html" || exname.ToLower() == ".htm")
        {
            doc.Add(Field.UnStored("text", parseHtml(html)));
        }
        else
        {
            doc.Add(Field.UnStored("text", html));
        }
        doc.Add(Field.Keyword("path", relativePath));
        //doc.Add(Field.Text("title", getTitle(html)));
        doc.Add(Field.Text("title", title));
        writer.AddDocument(doc);
    }
    /**/
    /// 
    /// 去除网页中的标签
    /// 
    /// 网页
    /// 返回去除后的网页文本
    private string parseHtml(string html)
    {
        string temp = Regex.Replace(html, "<[^>]*>", "");
        return temp.Replace(" ", " ");
    }
    /**/
    /// 
    /// 获取网页标题
    /// 
    /// 
    /// 
    private string getTitle(string html)
    {
        Match m = Regex.Match(html, "");
        if (m.Groups.Count == 2)
            return m.Groups[1].Value;
        return "文档标题未知";
    }
    /**/
    /// 
    /// 优化索引并关闭写入器
    /// 
    public void Close()
    {
        writer.Optimize();
        writer.Close();
    }

}
