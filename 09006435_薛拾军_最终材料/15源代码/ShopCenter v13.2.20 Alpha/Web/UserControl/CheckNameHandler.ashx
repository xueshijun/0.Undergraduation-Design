<%@ WebHandler Language="C#" Class="CheckNameHandler" %>

using System;
using System.Web; 

public class CheckNameHandler : IHttpHandler {

    public string txtGetName = string.Empty;
    public void ProcessRequest (HttpContext context) 
    {
        BLL.User user = new BLL.User();
        
        context.Response.ContentType = "text/plain";
        string flag = string.Empty; 
        
        txtGetName = context.Request.QueryString["userName"].ToString();


        if (user.CheckNameStyle(txtGetName)) //用户名格式正确
        {
            flag = "0";
            if(user.CheckName(txtGetName))
            {
                flag="2";//用户已存在
            }
            else
            {
                flag = "3";//用户不存在
            } 
        }
        else//用户名格式错误
        {
            flag = "1";
        }

        context.Response.Write(flag); 
    }

    
    
    public bool IsReusable {
        
        get {
            return false;
        }
    }

}