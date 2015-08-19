<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admins_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <!--                       CSS                       -->
<!-- Reset Stylesheet -->
<link rel="stylesheet" href="resources/css/reset.css" type="text/css" media="screen" />
<!-- Main Stylesheet -->
<link rel="stylesheet" href="resources/css/style.css" type="text/css" media="screen" />
<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
<link rel="stylesheet" href="resources/css/invalid.css" type="text/css" media="screen" />
<!--                       Javascripts                       -->
<!-- jQuery -->
<script type="text/javascript" src="resources/scripts/jquery-1.3.2.min.js"></script>
<!-- jQuery Configuration -->
<script type="text/javascript" src="resources/scripts/simpla.jquery.configuration.js"></script>
<!-- Facebox jQuery Plugin -->
<script type="text/javascript" src="resources/scripts/facebox.js"></script>
<!-- jQuery WYSIWYG Plugin -->
<script type="text/javascript" src="resources/scripts/jquery.wysiwyg.js"></script>

</head>
<body id="login">
    <form id="form1" runat="server">
  
<div id="login-wrapper" class="png_bg">
  <div id="login-top">
    <h1>Simpla Admin</h1>
    <!-- Logo (221px width) -->
    <a href="#"><img id="logo" src="resources/images/logo.png" alt="Simpla Admin logo" /></a> </div>
  <!-- End #logn-top -->
  <div id="login-content"> 
      <div class="notification information png_bg">
        <div> Just click "Sign In". No password needed. </div>
      </div>
      <p>
        <label>Username</label> 
          <asp:TextBox ID="txtName" runat="server" CssClass="text-input"></asp:TextBox>
      </p>
      <div class="clear"></div>
      <p>
        <label>Password</label>
          <asp:TextBox ID="txtPass" CssClass="text-input" runat="server" TextMode="Password"></asp:TextBox> 
      </p>
      <div class="clear">
   <!-- Start Notifications -->
    
                    <asp:Panel ID="paneInfo" runat="server" Visible="false">
                        <div class="notification information png_bg" style=" height:40px">
                            <a class="close" href="#"> <img alt="close" src="resources/images/icons/cross_grey_small.png"  title="Close this notification" /> 
                            </a>
                            <div>
                                <asp:Label ID="lbInfo" runat="server"></asp:Label>
                                <asp:Label ID="lbImageID" runat="server"></asp:Label>
                                <asp:Label ID="lbItemId" runat="server"></asp:Label>
                            </div>
                        </div>
          </asp:Panel>
          <asp:Panel ID="panelError" runat="server" Visible="false">
              <div class="notification error png_bg" style=" height:40px">
                  <a class="close" href="#">  <img alt="close" src="resources/images/icons/cross_grey_small.png"  title="Close this notification" />
                  </a>
                  <div>
                      <asp:Label ID="lbError" runat="server"></asp:Label>
                  </div>
              </div>
          </asp:Panel>
          <asp:Panel ID="panelSuccess" runat="server" Visible="false">
              <div class="notification success png_bg" style=" height:40px">
                  <a class="close" href="#"> <img alt="close" src="resources/images/icons/cross_grey_small.png"  title="Close this notification" />
                  </a>
                  <div>
                      <asp:Label ID="lbSuccess" runat="server"></asp:Label>
                  </div>
              </div>
          </asp:Panel>
          <asp:Panel ID="panelAttention" runat="server" Visible="false">
              <div class="notification attention png_bg" style=" height:40px">
                  <a class="close" href="#"> <img alt="close" src="resources/images/icons/cross_grey_small.png" title="Close this notification" />  
                  </a>
                  <div>
                      <asp:Label ID="lbAttention" runat="server"></asp:Label>
                  </div>
              </div>
          </asp:Panel>
      </div>
      <p id="remember-password">
        <input type="checkbox" />
        Remember me </p>
      <div class="clear"></div>
      <p> 
        <asp:LinkButton ID="lbtnLogin" CssClass="button" runat="server" 
              onclick="lbtnLogin_Click">登录</asp:LinkButton>
      </p>
 
  </div>
  <!-- End #login-content -->
</div>
<!-- End #login-wrapper -->
    </form>
</body>
</html>
