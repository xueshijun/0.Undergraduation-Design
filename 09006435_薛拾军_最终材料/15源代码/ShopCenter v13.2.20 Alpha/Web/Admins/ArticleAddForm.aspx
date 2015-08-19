<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ArticleAddForm.aspx.cs" Inherits="Admins_ArticleAddForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>    
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
<!-- jQuery Datepicker Plugin -->
<script type="text/javascript" src="resources/scripts/jquery.datePicker.js"></script>
<script type="text/javascript" src="resources/scripts/jquery.date.js"></script>
</head>
<body class="mybody" >
    <form id="form1" runat="server" style="background-color:#f0f0f0;"> 
        <div id="main-content" style=" margin-left:10px;  background-color:#f0f0f0; border:0px;">
    <!-- Main Content Section with everything -->
            <noscript>
<!-- Show a notification if the user has disabled javascript -->
                 <div class="notification error png_bg">
      <div> Javascript is disabled or is not supported by your browser. Please <a href="http://browsehappy.com/" title="Upgrade to a better browser">upgrade</a> your browser or <a href="http://www.google.com/support/bin/answer.py?answer=23852" title="Enable Javascript in your browser">enable</a> Javascript to navigate the interface properly.
        Download From <a href=" ">exet.tk</a></div>
    </div>
            </noscript>
    <!-- Page Head --> 
            <p>
                填写标题：<asp:TextBox ID="txtTitle" runat="server"  CssClass="text-input small-input"></asp:TextBox>
            </p>
            <p>
                选择分类： 
                <asp:DropDownList ID="ddlArticleClass" runat="server" CssClass="small-input">
                </asp:DropDownList>
            </p>
            <p>
                标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 签：<asp:TextBox ID="txtKeyWords" 
                    runat="server" CssClass="text-input small-input"></asp:TextBox>
            </p>
            <p>
                概&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 要：<asp:TextBox ID="txtDescription" 
                    runat="server" CssClass="text-input small-input"></asp:TextBox>
            </p>
    <!-- End .shortcut-buttons-set -->
            <div class="clear">
            </div>
    <!-- End .clear -->
            <div class="content-box">
      <!-- Start Content Box -->
                <div class="content-box-header">
                    <h2 style=" margin-left:10px; padding-top:8px;">
                        内 容</h2>
                </div>
                <div class="clear">
                </div>
                <script type="text/javascript" charset="utf-8" src="../kindEditor/kindeditor.js"></script>
                <script type="text/javascript">
                    KE.show({
                        id: 'Textarea1',
                        imageUploadJson: '../../upload_json.ashx',
                        fileManagerJson: '../../file_manager_json.ashx',
                        afterCreate: function (id) {
                            KE.event.ctrl(document, 13, function () {
                                KE.util.setData(id);
                                document.forms['form1'].submit();
                            });
                            KE.event.ctrl(KE.g[id].iframeDoc, 13, function () {
                                KE.util.setData(id);
                                document.forms['form1'].submit();
                            });
                        }
                    });
             </script>

                <textarea id="Textarea1" runat="server" cols="20" name="S1" rows="1" style="width:100%;height:300px; visibility:hidden; margin-bottom: 0px;"></textarea>
            </div>
            
                <!-- Start Notifications -->

            <asp:Panel ID="panelAttention" runat="server" Visible="false">
                <div class="notification attention png_bg">
                 <a class="close" href="#">
                <img alt="close" src="resources/images/icons/cross_grey_small.png" title="Close this notification" /></a>
                <div>
                    <asp:Label ID="lbAttention" runat="server"></asp:Label> 
                </div>  
           
            </div>
            </asp:Panel>  
            <asp:Panel ID="paneInfo" runat="server" Visible="false">   
                <div class="notification information png_bg">
                <a class="close" href="#"> <img alt="close" src="resources/images/icons/cross_grey_small.png"  title="Close this notification" /></a>
                    <div> 
                        <asp:Label ID="lbInfo" runat="server"></asp:Label>
                    </div>
                </div>  
            </asp:Panel>
            <asp:Panel ID="panelSuccess" runat="server" Visible="false">  
                <div class="notification success png_bg">
                    <a class="close" href="#">
                    <img alt="close" src="resources/images/icons/cross_grey_small.png" 
                        title="Close this notification" /></a>
                    <div>
                    <asp:Label ID="lbSuccess" runat="server"></asp:Label>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="panelError" runat="server" Visible="false"> 
            <div class="notification error png_bg">
                <a class="close" href="#">
                <img alt="close" src="resources/images/icons/cross_grey_small.png" 
                    title="Close this notification" /></a>
                <div> 
                    <asp:Label ID="lbError" runat="server"></asp:Label>
                </div>
            </div>
            </asp:Panel>
            <!-- End Notifications -->
            <div class="clear"> </div> 

            <asp:Button ID="btnSubmit" runat="server" CssClass="button"  onclick="btnSubmit_Click" Text="提交" ToolTip="(提交快捷键: Ctrl + Enter)" />
    <!-- End .content-box -->

            <div class="clear"> </div> 
        </div>
        <!-- End #main-content -->
     
    </form>
</body>
</html>
