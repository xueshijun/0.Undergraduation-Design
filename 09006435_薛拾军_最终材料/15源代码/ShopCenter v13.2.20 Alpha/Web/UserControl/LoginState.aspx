<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginState.aspx.cs" Debug="true" Inherits="UserControl_LoginState" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>登录/注销</title>
    
<link rel="Stylesheet" href="../css/topheader.css" />  <!-- Styles --> 
 
</head>
<body>
    <form id="form1" runat="server"> 
     <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
                    <asp:Panel ID="panelLoging" runat="server" Visible="false">
                   
                     <p class="login-info">
                         &nbsp;&nbsp;&nbsp; 帐号<asp:TextBox ID="txtName" runat="server"  CssClass="textInpute"></asp:TextBox> 
                     密码<asp:TextBox ID="txtPwd" runat="server" CssClass="textInpute" TextMode="Password"></asp:TextBox>  
                         <asp:LinkButton ID="lbtnLogin" runat="server" CssClass="button"  onclick="lbtnLogin_Click">登录</asp:LinkButton> 
                        <asp:LinkButton ID="lbtnBack" runat="server" CssClass="button"  onclick="lbtnBack_Click" >返回</asp:LinkButton>
                    </p> 
                    </asp:Panel>


                    <asp:Panel ID="panelLogined" runat="server" Visible="false"> 
                    <p class="login-info">
                          <span> &nbsp;&nbsp; 亲，欢迎来移动商城！</span> 
                        <asp:LinkButton ID="lbtnUserHome" runat="server" onclick="lbtnUserHome_Click">
                       <asp:Label ID="lbNickName" runat="server" Text="x "></asp:Label>
                        </asp:LinkButton> 
                        <asp:Image ID="imgHeadImg" runat="server" width="15" height="15"/>   
                         <asp:LinkButton ID="lbtnCancle" runat="server" onclick="lbtnCancle_Click">退出</asp:LinkButton>
                   
                    </p>  
                   </asp:Panel> 
                   
                   
                   
                   <asp:Panel ID="panelSelect" runat="server">  
                   
                   <span>   &nbsp;&nbsp; 亲，欢迎加入吧！</span> 
                        <div class="new-member">
                            <span class="new-member-vip">新会员专享</span>  
                        </div>
                      <asp:LinkButton ID="lbtnLogining" runat="server" onclick="lbtnLogining_Click" >登录</asp:LinkButton> 
                      <asp:LinkButton ID="lbtnReg" runat="server" onclick="lbtnReg_Click">免费注册</asp:LinkButton> 
                     
                   </asp:Panel>
                    
    
      <asp:Timer ID="Timer1" runat="server" ontick="Timer1_Tick" Interval="60000" Enabled="False"></asp:Timer>
 
    </form>
</body>
</html>
