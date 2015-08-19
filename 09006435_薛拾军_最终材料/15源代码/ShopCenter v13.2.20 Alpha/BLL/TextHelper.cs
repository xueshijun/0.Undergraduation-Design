using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
 
using System.Web.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;
 
using System.IO;
using System.Collections;
//获取网卡
using System.Net;
using System.Net.Sockets;
using System.Text.RegularExpressions;
using System.Diagnostics;

using System.Net.Mail;

namespace BLL
{
    public class TextHelper
    {
        public TextHelper() { }
        #region//字符替换
        /// <summary>
        ///替换标题中的标点符号
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static string ReplaceFirstAndEndTag(string str)
        {
            str = str.Replace("/", "");
            str = str.Replace(@"\", "");
            str = str.Replace(",", "");
            str = str.Replace("|", "");
            str = str.Replace("、", "");
            str = str.Replace("，", "");
            str = str.Replace("@", "");
            str = str.Replace("#", "");
            str = str.Replace("$", "");
            str = str.Replace("%", "");
            str = str.Replace("^", "");
            str = str.Replace("&", "");
            str = str.Replace("《", "");
            str = str.Replace("》", "");
            str = str.Replace(">", "");
            str = str.Replace("<", "");
            str = str.Replace("-", "");
            str = str.Replace("+", "");
            str = str.Replace("=", "");
            str = str.Replace(")", "");
            str = str.Replace("）", "");
            str = str.Replace("(", "");
            str = str.Replace("（", "");
            str = str.Replace("·", "");
            str = str.Replace("；", "");
            str = str.Replace("。", "");
            return str;
        }

        //替换简介中的空格
        public static string ReplaceSpace(string str)
        {
            str = str.Replace(" ", "");
            return str;
        }


        public static string ReplacHtmlCode(string Htmlstring)
        {
            //删除脚本 
            Htmlstring = Regex.Replace(Htmlstring, @" <script(\s[^>]*?)?>[\s\S]*? </script>", "", RegexOptions.IgnoreCase);
            //删除样式
            Htmlstring = Regex.Replace(Htmlstring, @" <style>[\s\S]*? </style>", "", RegexOptions.IgnoreCase);
            //删除html标签
            Htmlstring = Regex.Replace(Htmlstring, @" <(.[^>]*)>", "", RegexOptions.IgnoreCase);
            return Htmlstring;

        }

        /**/
        ///   <summary>   
        ///   去除HTML标记   
        ///   </summary>   
        ///   <param   name="NoHTML">包括HTML的源码   </param>   
        ///   <returns>已经去除后的文字</returns>   
        public static string NoHTML(string Htmlstring)
        {
            //删除脚本   
            Htmlstring = Regex.Replace(Htmlstring, @"<script[^>]*?>.*?</script>", "", RegexOptions.IgnoreCase);
            //删除HTML   
            Htmlstring = Regex.Replace(Htmlstring, @"<(.[^>]*)>", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"([/r/n])[/s]+", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"-->", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"<!--.*", "", RegexOptions.IgnoreCase);

            Htmlstring = Regex.Replace(Htmlstring, @"&(quot|#34);", @"/", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(amp|#38);", "&", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(lt|#60);", "<", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(gt|#62);", ">", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(nbsp|#160);", "   ", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(iexcl|#161);", "/xa1", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(cent|#162);", "/xa2", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(pound|#163);", "/xa3", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(copy|#169);", "/xa9", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&#(/d+);", "", RegexOptions.IgnoreCase);

            Htmlstring.Replace("<", "");
            Htmlstring.Replace(">", "");
            Htmlstring.Replace("/r/n", "");
            Htmlstring = System.Web.HttpContext.Current.Server.HtmlEncode(Htmlstring).Trim();

            return Htmlstring;
        }


        //取出文本中的图片地址#region   取出文本中的图片地址   
        /**/
        ///   <summary>   
        ///   取出文本中的图片地址   
        ///   </summary>   
        ///   <param   name="HTMLStr">HTMLStr</param>   
        //public static string GetImgUrl(string HTMLStr)
        //{

        //    string str = string.Empty;
        //    string sPattern = @"^<img/s+[^>]*>";
        //    Regex r = new Regex(@"<img/s+[^>]*/s*src/s*=/s*([']?)(?<url>/S+)'?[^>]*>",
        //            RegexOptions.Compiled);
        //    Match m = r.Match(HTMLStr.ToLower());
        //    if (m.Success)
        //        str = m.Result("${url}");
        //    return str;
        //}
        /**/
        ///   <summary>   
        ///   移除HTML标签   
        ///   </summary>   
        ///   <param   name="HTMLStr">HTMLStr</param>   
        public static string RelpaceTags(string HTMLStr)
        {
            return System.Text.RegularExpressions.Regex.Replace(HTMLStr, "<[^>]*>", "");
        }




        /// <summary>
        /// 登录替换非法字符
        /// </summary>
        /// <param name="s"></param>
        /// <returns></returns>
        public static string SafeReplace(string s)
        {
            s = s.Replace("'", "''");
            s = s.Replace(",", "");
            s = s.Replace(" ", "");
            s = s.Replace("|", "");
            s = s.Replace("=", "");
            s = s.Replace("+", "");
            s = s.Replace("-", "");
            s = s.Replace("\\", "");
            s = s.Replace("/", "");
            s = s.Replace("~", "");
            s = s.Replace("'", "");
            s = s.Replace("\"", "");
            s = s.Replace("$", "");
            s = s.Replace("%", "");
            s = s.Replace("&", "");
            s = s.Replace("(", "");
            s = s.Replace(")", "");
            s = s.Replace("}", "");
            s = s.Replace("{", "");
            s = s.Replace("]", "");
            s = s.Replace("[", "");
            s = s.Replace("^", "");
            s = s.Replace("!", "");
            s = s.Replace("*", "");
            s = s.Replace("?", "");
            s = s.Replace(";", "");
            s = s.Replace(":", "");
            s = s.Replace("<", "");
            s = s.Replace(">", "");
            s = s.Replace("#", "");
            s = s.Replace("*", "");
            s = s.Replace(" ", "");
            return s;
        }

        /// <summary>
        /// 替换攻击字符
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static string TextReplace(string str)
        {
            //str = str.Replace("alert", " ");
            //str = str.Replace("script", " ");
            str = Regex.Replace(str, @" <script(\s[^>]*?)?>[\s\S]*? </script>", "", RegexOptions.IgnoreCase);
            return str.Trim();
        }

        #endregion

    }
}
