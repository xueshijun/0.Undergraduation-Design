<%@ Control Language="C#" AutoEventWireup="true" CodeFile="quickLogin.ascx.cs" Inherits="UserControl_quickLogin" %>
 
   <!--                       CSS                       -->
<!-- Reset Stylesheet -->
<link rel="stylesheet" href="Admins/resources/css/reset.css" type="text/css" media="screen" />
<!-- Main Stylesheet -->
<link rel="stylesheet" href="Admins/resources/css/style.css" type="text/css" media="screen" />
<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
<link rel="stylesheet" href="Admins/resources/css/invalid.css" type="text/css" media="screen" />
<!--                       Javascripts                       -->
<!-- jQuery -->
<script type="text/javascript" src="Admins/resources/scripts/jquery-1.3.2.min.js"></script>
<!-- jQuery Configuration -->
<script type="text/javascript" src="Admins/resources/scripts/simpla.jquery.configuration.js"></script>
<!-- Facebox jQuery Plugin -->
<script type="text/javascript" src="Admins/resources/scripts/facebox.js"></script>
<!-- jQuery WYSIWYG Plugin -->
<script type="text/javascript" src="Admins/resources/scripts/jquery.wysiwyg.js"></script>
<!-- jQuery Datepicker Plugin -->
<script type="text/javascript" src="Admins/resources/scripts/jquery.datePicker.js"></script>
<script type="text/javascript" src="Admins/resources/scripts/jquery.date.js"></script>

<p> <label>对不起你还没有登录，请先登录！</label></p>
 <fieldset>
            <!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->
            <p>
              <label>用户名</label>
                <asp:TextBox ID="txtUserName" runat="server" CssClass="text-input small-input"></asp:TextBox> 
              <span class="input-notification success png_bg">Successful message</span>
              <!-- Classes for input-notification: success, error, information, attention -->
              <br />
              <small>A small description of the field</small> </p>
            <p>
              <label>密&nbsp; 码</label>
              <asp:TextBox ID="txtPwd" runat="server" CssClass="text-input small-input"></asp:TextBox> 
              <span class="input-notification error png_bg">Error message</span> </p>
             <p> 
                 <asp:LinkButton ID="lbtnLogin" runat="server" onclick="lbtnLogin_Click">登录</asp:LinkButton>
              </p>
</fieldset>