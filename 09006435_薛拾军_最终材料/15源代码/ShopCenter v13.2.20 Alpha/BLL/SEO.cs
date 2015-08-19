using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
 

using System.Web.UI.HtmlControls;
namespace BLL
{
    public class SEO
    {
        public string Title;
        public string KeyWords;
        public string Description;
        public SEO() { }
        //public SEO(string Title,string KeyWords,string Description) {
        //    this.Title = Title;
        //    this.KeyWords = KeyWords;
        //    this.Description = Description; 
        //}

        public List<HtmlMeta> AllMeta(string KeyWords, string Description)
        {
            List<HtmlMeta> listHtmlMeta=new List<HtmlMeta>();
            listHtmlMeta.Add(MetaElement("description",Description));
            listHtmlMeta.Add(MetaElement("keywords",KeyWords)); 
            return listHtmlMeta;
        }


        public HtmlMeta MetaElement(string Name,string Contents)
        {
            HtmlMeta meta = new HtmlMeta();
            meta.Name = Name;
            meta.Content = Contents;
            return meta;
        }
        
        /// 获取客户端IP 
        public static string GetClientIP()
        {
            return System.Web.HttpContext.Current.Request.UserHostAddress;
        } 

    } 
}
