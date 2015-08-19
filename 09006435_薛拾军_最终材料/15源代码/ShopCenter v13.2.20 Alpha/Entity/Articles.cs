using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class Articles
    {
        private int ArticleID;
        private int ClassID;
       private string ClassName;//外表
       private string Title;
       private string KeyWords;
       private string Desription;
       private string Contents;
       private string PubDate;
       private int ViewTimes;
       private string Author;


        public Articles() { }
        public Articles(int ClassID, int ArticleID, string ClassName, string Title, string KeyWords, string Description, string Contents, string PubDate, int ViewTimes, string Author)
        {
            this.ClassID = ClassID;
            this.ArticleID = ArticleID;
            this.ClassName = ClassName;
            this.Title = Title;
            this.KeyWords = KeyWords;
            this.Desription = Description;
            this.Contents = Contents;
            this.PubDate = PubDate;
            this.ViewTimes = ViewTimes;
            this.Author = Author;
        }
        public int getClassID()
        {
            return ClassID;
        }

        public void setClassID(int classID)
        {
            ClassID = classID;
        }

        public string getClassName()
        {
            return ClassName;
        }

        public void setClassName(string className)
        {
            ClassName = className;
        }

        public int getArticleID()
        {
            return ArticleID;
        }

        public void setArticleID(int articleID)
        {
            ArticleID = articleID;
        }

        public string getTitle()
        {
            return Title;
        }

        public void setTitle(string title)
        {
            Title = title;
        }

        public string getKeyWords()
        {
            return KeyWords;
        }

        public void setKeyWords(string keyWords)
        {
            KeyWords = keyWords;
        }

        public string getDesription() {
            return this.Desription;
        }
        public void setDesription(string Desription)
        {
            this.Desription = Desription;
        }

        public string getContents()
        {
            return Contents;
        }

        public void setContents(string contents)
        {
            Contents = contents;
        }

        public string getPubDate()
        {
            return PubDate;
        }

        public void setPubDate(string pubDate)
        {
            PubDate = pubDate;
        } 

        public int getViewTimes()
        {
            return ViewTimes;
        }

        public void setViewTimes(int viewTimes)
        {
            ViewTimes = viewTimes;
        }

        public string getAuthor()
        {
            return Author;
        }

        public void setAuthor(string author)
        {
            Author = author;
        }
      
    }
}
