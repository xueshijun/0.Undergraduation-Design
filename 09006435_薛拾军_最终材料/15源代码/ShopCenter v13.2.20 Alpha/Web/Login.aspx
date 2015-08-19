<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Debug="true" %>

<%@ Register src="UserControl/copyrightl.ascx" tagname="copyrightl" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    
<script>
//全登陆不允许iframe嵌入 
if(window.top !== window.self){ window.top.location = window.location;}
</script>

    <link rel="shortcut icon" href="images/banner/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="css/login/login.css" />	
  <script type="text/javascript" src="Member/jsLib/jquery-1.3.2.js"></script>
    
    <!----登录用户名检测onchange="JudgeUserName();"------->
     <script type="text/javascript">
         function JudgeUserName() {
             $.ajax({
                 type: "GET",
                 url: "CheckName.aspx",
                 dataType: "html",
                 data: "userName=" + $("#txtUserName").val(),
                 beforeSend: function (XMLHttpRequest) {
                     $("#showResult1").text("查询中...");
                     // Pause(this,100);
                 },
                 success: function (msg) {
                     $("#showResult1").html(msg);
                     $("#showResult1").css("color", "red");
                 },
                 complete: function (XMLHttpRequest, textStatus) {
                     //隐藏正在查询图片
                 },
                 error: function () {
                     //错误处理
                 }
             });
         }

     </script>
 </head>
<body>
    <form id="form1" runat="server"> 
	<div id="page">
	    <div id="header" class="clearfix">
		<!--header-->   
    <h1 id="logo"> <span>在线购物 </span></h1>
		
		<!-- #header END -->
	</div>
	    <div id="content">
	<div class="login"> 
		<div id="J_LoginBox" class="login-box module-static">
			<div class="hd"> 
				<ul> 			
					<li class="current"><h2>商城VIP会员</h2></li> 
				</ul>
			</div>
			<div class="bd">
				<div class="taobao-box">
					<!--login box begin--> 
					
					
					


<!--登录的错误信息-->
<div id="J_Message" style="display:none;" class="login-msg msg">
	
	<p class="error"></p>
	
</div>
<!--登录的错误信息结束-->

   <!--标准登录框-->
   <div id="J_Static" class="static">
 
    </div>
        
        	<div class="field">
				<label>用户名</label>
				<span >
						<asp:TextBox ID="txtUserName" runat="server" class="login-text" tabindex="2"  ></asp:TextBox> <div id="showResult1" style="float:right;"></div>
				</span>
				<span class="password-edit" style="display:none;"></span>      
				 
			</div>
			<div class="field">
				<label>密　码</label>
				<span > 
					<asp:TextBox ID="txtPwd" runat="server"  TextMode="Password" class="login-text" tabindex="2"></asp:TextBox>
				</span>
				<span class="password-edit" style="display:none;"></span>       
			</div>
			<!--##解决IE6下多一行空白的问题-->
           
              <div  class="field" >
	              <label for="J_CodeInput_i">验证码</label>
	              <span > 
                  <asp:TextBox ID="txtCheckCode" runat="server" class="login-code" tabindex="3"></asp:TextBox>
                    </span> 
                  <asp:Image ID="imgCode"  alt=""  class="change-code" runat="server"  onclick="this.src=this.src+'?'" src="CheckCode.aspx"/>
                  <asp:LinkButton ID="J_StandardCode" runat="server" class="change-code">看不清<br />换一张</asp:LinkButton>  
                   <!--class="check-code-img" -->   
	          
             </div>  
    <!-- Styles --> 
    <link type="text/css" href="ui/css/custom-theme/jquery-ui-1.8.16.custom.css" rel="stylesheet" />
 
  
    	   	<div class="field">
                <asp:Panel ID="panelPwd" runat="server" Visible="false"> 
                 <div class="ui-widget">
                  <div class="ui-state-highlight ui-corner-all">
                    <p><span class="ui-icon ui-icon-info" style="float: left; margin-right: .3em;"></span>
                    <strong>嗨!</strong> 您的密码错误!</p>
                  </div>
                </div>
             </asp:Panel>
             <asp:Panel ID="panelCheckCode" runat="server" Visible="false"> 
                 <div class="ui-widget">
                  <div class="ui-state-highlight ui-corner-all">
                    <p><span class="ui-icon ui-icon-info" style="float: left; margin-right: .3em;"></span>
                    <strong>嗨!</strong> 验证码错误!</p>
                  </div>
                </div>
             </asp:Panel>
                <asp:Panel ID="panelLoginTime" runat="server"  Visible="false">
                <div class="ui-widget">
                  <div class="ui-state-error ui-corner-all">
                    <p>
                    <span class="ui-icon ui-icon-alert" style="float: left; margin-right: .3em;">
                    </span>
                    <strong>Sorry！:</strong> 您输入的次数太多，请稍候再试！<asp:Label ID="lbCountLogin" runat="server" 
                            Text="1" Visible="False"></asp:Label></p>
                  </div>
                </div>
            </asp:Panel>
             </div>
     
        <ul class="entries">    
            <li><asp:LinkButton ID="lbtnLogin" runat="server" CssClass="button" onclick="lbtnLogin_Click">登录</asp:LinkButton></li>
            <li class="dynamic-pwd" >
                <a href="#" id="J_DynamicLink" tabindex="7"></a></li>
            <li  class="register"><a href="Register.aspx" target="_blank" tabindex="8">免费注册</a></li>
        </ul>
</div>
				 
 
					<!--login box end-->
				</div>
			</div>	
			<div class="ft">
		    </div>
		</div>
		<!-- .login-box END --> 
			<div class="login-bg" 
                style="background-image:url('images/login_bg2.png'); z-index:-20; bottom: 134px;" >  
					<!--为广告所在容器指定<div id="flash-ad"></div>--> 
                       
                        <%--<asp:Image ID="Image1" runat="server" ImageUrl="~/images/login_bg2.png"/>  --%>
    		</div>
		
	</div>   
	<div>
		<div style=" margin-bottom: 10px;">手机登录 随时随地购物</div>
		<div>
			<p style='float:right'>
			<img height="18" width="18" style="vertical-align:middle;" alt="反馈"  src="images/feedback.png" />
			<a target="_blank" href="#">"登录页面"改进建议</a></p>
			<p>推荐使用搜狗浏览器，<a href='#'>点此下载&gt;&gt;</a></p>
		</div>
	</div>
</div>
		
		
        <div id="footer">

<div id="copyright">
    <uc1:copyrightl ID="copyrightl1" runat="server" />
            </div>
<div id="server-num"> </div>

</div>

    </form>

    </div>
					
					
					
					
    </form>
</body>
</html>
