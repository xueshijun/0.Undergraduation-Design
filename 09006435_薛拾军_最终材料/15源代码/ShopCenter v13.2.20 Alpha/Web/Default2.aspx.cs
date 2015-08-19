using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

using System.Text.RegularExpressions;
using System.Web.UI.HtmlControls;

public partial class Default2 : System.Web.UI.Page
{ 
    protected void Page_Load(object sender, EventArgs e)
    { 
        Response.Write("System.Web.HttpContext.Current.Request.UserHostAddress"
            +System.Web.HttpContext.Current.Request.UserHostAddress);
        Response.Write("</br>");
        
        Response.Write("System.Web.HttpContext.Current.Request.ServerVariables[\"REMOTE_ADDR\"];"
            +System.Web.HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"]);
        Response.Write("</br>");

        Response.Write("如何绕过代理服务器获得用户真实的IP地址呢？");
        Response.Write("</br>");

        Response.Write("是否使用代理："
            + (System.Web.HttpContext.Current.Request.ServerVariables["HTTP_VIA"] != null));
        Response.Write("</br>");
        if (System.Web.HttpContext.Current.Request.ServerVariables["HTTP_VIA"] != null)
        { 
            Response.Write("有代理"
                + System.Web.HttpContext.Current.
                    Request.ServerVariables["HTTP_X_FORWARDED_FOR"].
                    Split(new char[] { ',' })[0]); 
             Response.Write("</br>");
        }
        else {  
        Response.Write("没代理" + System.Web.HttpContext.Current.
                Request.ServerVariables["REMOTE_ADDR"]);
        Response.Write("</br>");
        Response.Write("该方法因为可以编造一个假的IP"+getIp());
        Response.Write("</br>");
        Response.Write("最终IP:"+BLL.IPAddress.ClientIPAddress);

            
        }
        
        

    }
    /// <summary>
    /// Request.ServerVariables["HTTP_VIA"] ,
    /// ServerVariables["HTTP_X_FORWARDED_FOR"],
    /// Request.ServerVariables["REMOTE_ADDR"]的值分下面几种情况:
    /// 一、没有使用代理服务器的情况：
    /// REMOTE_ADDR = 用户的 IP
    /// HTTP_VIA = 没数值或不显示
    /// HTTP_X_FORWARDED_FOR = 没数值或不显示
    /// 
    /// 二、使用透明代理服务器的情况：Transparent Proxies
    /// REMOTE_ADDR = 最后一个代理服务器 IP
    /// HTTP_VIA = 代理服务器 IP
    /// HTTP_X_FORWARDED_FOR = 用户的真实 IP ，经过多个代理服务器时，这个值类似如下：203.98.182.163, 203.98.182.163, 203.129.72.215。
    /// 这类代理服务器还是将您的信息转发给您的访问对象，无法达到隐藏真实身份的目的。
    /// 
    /// 三、使用普通匿名代理服务器的情况：Anonymous Proxies
    /// REMOTE_ADDR = 最后一个代理服务器 IP
    /// HTTP_VIA = 代理服务器 IP
    /// HTTP_X_FORWARDED_FOR = 代理服务器 IP ，经过多个代理服务器时，这个值类似如下：203.98.182.163, 203.98.182.163, 203.129.72.215。
    /// 隐藏了您的真实IP，但是向访问对象透露了您是使用代理服务器访问他们的。
    /// 
    /// 四、使用欺骗性代理服务器的情况：Distorting Proxies
    /// REMOTE_ADDR = 代理服务器 IP
    /// HTTP_VIA = 代理服务器 IP
    /// HTTP_X_FORWARDED_FOR = 随机的 IP ，经过多个代理服务器时，这个值类似如下：203.98.182.163, 203.98.182.163, 203.129.72.215。 
    /// </summary>
    /// 面代码看来起是正常的.可惜这里却隐藏了一个隐患!!
    /// 因为"HTTP_X_FORWARDED_FOR"这个值是通过获取HTTP头的"X_FORWARDED_FOR"属性取得.
    /// 所以这里就提供给恶意破坏者一个办法:可以伪造IP地址!! 
    /// 
    /// Example:http://www.cnblogs.com/kingthy/archive/2007/11/24/970783.html
    /// HttpWebRequest request = (HttpWebRequest)HttpWebRequest.Create("http://localhost/ip.aspx"); 
    /// request.Headers.Add("X_FORWARDED_FOR", "0.0.0.0"); 
    /// HttpWebResponse response = (HttpWebResponse)request.GetResponse(); 
    /// StreamReader stream = new StreamReader(response.GetResponseStream()); 
    /// string IP = stream.ReadToEnd(); 
    /// stream.Close(); 
    /// response.Close(); 
    /// request = null; 
    ///  
    /// <returns></returns>
    private static string getIp()
    {
        //判断是否有代理
        if (System.Web.HttpContext.Current.Request.ServerVariables["HTTP_VIA"] != null)
            return System.Web.HttpContext.Current.
                Request.ServerVariables["HTTP_X_FORWARDED_FOR"].
                Split(new char[] { ',' })[0];
        else
            return System.Web.HttpContext.Current.
                Request.ServerVariables["REMOTE_ADDR"];
    }
} 