using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Data;
using System.Data.SqlClient;

namespace BLL
{ 
    public class Articles
    {
        DAL.SqlHelper helper = new DAL.SqlHelper();
       

        #region 分类
        //获取文章分类
        public DataSet GetDataSetArticleClass(){
            return helper.GetdataSet("select ClassID,ClassName from ArticleClass");
        }
        //获取文章分类 
        public DataSet GetDataSetArticleClassCount(){  
            return helper.GetdataSet("select CID,ClassName,count(AID) AS COUNT from ArticlesClassCountByCID group by CID,ClassName");
        } 
        //查找分类名是否存在
        public int CmpClass(string strCName) {
            return helper.ExcuteCommandInt("select  ClassName from ArticleClass where ArticleClass='" + strCName + "'");
        }
        //新增分类
        public bool AddClass(string strClassName) {
            //if (CmpClass(strClassName) > 0)
            //    return helper.ExcuteCommandInt("insert into ArticleClass(ClassName) values ('" + strClassName + "')");
            //else
            //    return -1;
            return helper.ExcuteCommandInt("insert into ArticleClass(ClassName) values ('" + strClassName + "')") > 0;
        }
        //修改分类
        public int UpdateClass(int CID, string newClassName) {
            if (CmpClass(newClassName) > 0)
            {
                return helper.ExcuteCommandInt("update ArticleClass set ClassName='" + newClassName + "' where ClassID=" + CID + "");
            }
            else
            {
                return -1;
            }
        }
        #endregion




        //新增文章
        //public int InsertArticle(int ClassID,string title,string keyWords,string strDescription,string strContent,DateTime dateTime,int ViewTimes,string strAuthor) 
        //{
        //    return helper.ExcuteCommandInt("insert into Articles(ClassID,Title,KeyWords,Description,Contents,PubDate,ViewTimes,Author) values("
        //        + ClassID+",'"+ title+"','"+ keyWords+"','"+ strDescription+"','"
        //        + strContent+"','"+ dateTime.ToString()+"',"+ ViewTimes+",'"+ strAuthor+"')");
        //}
        public int InsertArticle(Entity.Articles article)
        {
            return helper.ExcuteCommandInt("insert into Articles(ClassID,Title,KeyWords,Description,Contents,PubDate,ViewTimes,Author) values("
                + article.getClassID()+ ",'" + article.getTitle() + "','" + article.getKeyWords() + "','" + article.getDesription()+ "','"
                +article.getContents()+ "','" + article.getPubDate()+ "'," +article.getViewTimes()+ ",'" +article.getAuthor()+ "')");
        }
        //获取文章列表
        public DataSet GetArticleList() {
            return helper.GetdataSet("select ArticleClass.ClassID,ClassName,ArticleID,Articles.ClassID,Title,KeyWords,Description,Contents,PubDate,ViewTimes,Author from ArticleClass,Articles where ArticleClass.ClassID=Articles.ClassID");
        }
        //根据类别获取文章列表
        public DataSet GetdsArticleListByCID(int intClassID)
        {
            return helper.GetdataSet("select ArticleClass.ClassID,ClassName,ArticleID,Articles.ClassID,Title,KeyWords,Description,Contents,PubDate,ViewTimes,Author from ArticleClass,Articles where ArticleClass.ClassID=Articles.ClassID and ArticleClass.ClassID=" + intClassID + "");
        } 

        //获取最新文章

        public DataSet GetdsTopArticleByCID(int intClassID)
        {
            return helper.GetdataSet("select top 1 ArticleClass.ClassID,ClassName,ArticleID,Articles.ClassID,Title,KeyWords,Description,Contents,PubDate,ViewTimes,Author from ArticleClass,Articles where ArticleClass.ClassID=Articles.ClassID and ArticleClass.ClassID=" + intClassID + "");
        } 

        //根据获取指定文章
        public DataSet GetArtcleByAID(int intAID) {
            return helper.GetdataSet("select * from  ArticleAll where ArticleID="+intAID+"");
        } 
        //根据获取指定文章
        public Entity.Articles GetArtcleObjByAID(int intAID)
        {
            DataRowView drv = helper.GetTableValue("select * from  ArticleAll where ArticleID=" + intAID + "");
            return new Entity.Articles(
                                int.Parse(drv["ClassID"].ToString()),
                                int.Parse(drv["ArticleID"].ToString()),
                                drv["ClassName"].ToString(),
                                drv["Title"].ToString(),
                                drv["KeyWords"].ToString(),
                                drv["Description"].ToString(),
                                drv["Contents"].ToString(),
                                drv["PubDate"].ToString(),
                                int.Parse(drv["ViewTimes"].ToString()),
                                drv["Author"].ToString());
        }

        //修改文章
        //public int UpdateArticle() 
        //{

        //}
    }
}
