﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ItemsManage.aspx.cs" Inherits="Admins_ItemsManage" Debug="true" MaintainScrollPositionOnPostback="true" %>

<%@ Register src="AdminUserControl/adminMenu.ascx" tagname="adminMenu" tagprefix="uc1" %>

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



<style type="text/css">

        /* 在显示‘强制弹出’时，背景项目所用的样式 */
    .modalBackground 
    {
        background-color: #777;
        filter: alpha(opacity=75);
        opacity: 0.75;
    }
    
    /* 强制弹出对话框所用的样式 */
    .cssModalPopup
    {
        width: 400px;
    }
    
</style>



</head>
<body>
    <form id="form1" runat="server">
        <div id="body-wrapper"> 
                    <!-- Wrapper for the radial gradient background -->
            <div id="sidebar">
            <div id="sidebar-wrapper">
              <!-- Sidebar with logo and menu -->
              <h1 id="sidebar-title"><a href="#">Simpla Admin</a></h1>
              <!-- Logo (221px wide) -->
              <a href="#"><img id="logo" src="resources/images/logo.png" alt="Simpla Admin logo" /></a>
              <!-- Sidebar Profile links -->
              <div id="profile-links"> Hello, <a href="#" title="Edit your profile">865171</a>, you have <a href="#messages" rel="modal" title="3 Messages">3 Messages</a><br />
                <br />
                <a href="#" title="View the Site">View the Site</a> | <a href="#" title="Sign Out">Sign Out</a> </div>
              <ul id="main-nav">
                <!-- Accordion Menu -->
                <li> <a href="#" class="nav-top-item no-submenu">
                  <!-- Add the class "no-submenu" to menu items with no sub menu -->
                  Dashboard </a> </li>
                <li> <a href="#" class="nav-top-item" > 文章管理 </a>
                  <ul> 
                    <li><a href="ArticleCategorys.aspx">文章分类</a></li>
                    <li><a href="ArticleModify.aspx">文章管理</a></li>
                    <!-- Add class "current" to sub menu items also -->
                        <%--     <li><a href="#">Manage Comments</a></li>
                    <li><a href="#">Manage Categories</a></li>--%>
                  </ul>
                </li>
                <li> <a href="#" class="nav-top-item"  title="商品种类管理"> 商品分类管理 </a>
                  <ul>
                    <li><a href="ItemsCategory.aspx">一级分类</a></li>
                    <li><a href="ItemsProduct.aspx">二级分类</a></li>
                  </ul>
                </li>
                <li> 
                    <a href="#"  class="nav-top-item current" title="上架货物管理"> 商品信息管理 </a>
                    <ul>
                    <li><a href="ItemsAdd.aspx" title="新增商品信息">新增商品信息</a></li>
                    <li><a class="current" href="ItemsManage.aspx" title="商品信息更新">商品信息更新</a></li>
                    <li><a href="ItemSetting.aspx">秒杀商品设置</a></li> 
                    <li><a href="ItemsPricesModify.aspx">商品价格设置</a></li>
                    <li><a href="ItemsImgModify.aspx">商品配图</a></li>
                  </ul>
                </li>
                <li> <a href="#" class="nav-top-item"> 垂直搜索 </a>
                  <ul> 
                    <li><a href="CreateIndex.aspx">创建索引</a></li> 
                  </ul>
                </li> 
              </ul>
              <!-- End #main-nav -->
              <div id="messages" style="display: none">
                <!-- Messages are shown when a link with these attributes are clicked: href="#messages" rel="modal"  -->
                <h3>3 Messages</h3>
                <p> <strong>17th May 2009</strong> by Admin<br />
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. <small><a href="#" class="remove-link" title="Remove message">Remove</a></small> </p>
                <p> <strong>2nd May 2009</strong> by Jane Doe<br />
                  Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est. <small><a href="#" class="remove-link" title="Remove message">Remove</a></small> </p>
                <p> <strong>25th April 2009</strong> by Admin<br />
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. <small><a href="#" class="remove-link" title="Remove message">Remove</a></small> </p>

                  <h4>New Message</h4>
                  <fieldset>
                  <textarea class="textarea" name="textfield" cols="79" rows="5"></textarea>
                  </fieldset>
                  <fieldset>
                  <select name="dropdown" class="small-input">
                    <option value="option1">Send to...</option>
                    <option value="option2">Everyone</option>
                    <option value="option3">Admin</option>
                    <option value="option4">Jane Doe</option>
                  </select>
                  <input class="button" type="submit" value="Send" />
                  </fieldset> 
              </div>
              <!-- End #messages -->
            </div>
          </div>
            <!-- End #sidebar -->

          <div id="main-content">
            <!-- Main Content Section with everything -->
            <noscript>
            <!-- Show a notification if the user has disabled javascript -->
            <div class="notification error png_bg">
              <div> Javascript is disabled or is not supported by your browser. Please 
              <a href="http://browsehappy.com/" title="Upgrade to a better browser">upgrade</a> your browser or <a href="http://www.google.com/support/bin/answer.py?answer=23852" title="Enable Javascript in your browser">enable</a> Javascript to navigate the interface properly.
                Download From <a href="http://www.exet.tk">exet.tk</a></div>
            </div>
            </noscript>
            <!-- Page Head --> 
            <ul class="shortcut-buttons-set">
              <li><a class="shortcut-button" href="#"><span> <img src="resources/images/icons/pencil_48.png" alt="icon" /><br />
                Write an Article 
                  </span></a></li>
              <li><a class="shortcut-button" href="#"><span> <img src="resources/images/icons/paper_content_pencil_48.png" alt="icon" /><br />
                Create a New Page </span></a></li>
              <li><a class="shortcut-button" href="#"><span> <img src="resources/images/icons/image_add_48.png" alt="icon" /><br />
                Upload an Image </span></a></li>
              <li><a class="shortcut-button" href="#"><span> <img src="resources/images/icons/clock_48.png" alt="icon" /><br />
                Add an Event </span></a></li>
              <li><a class="shortcut-button" href="#messages" rel="modal"><span> <img src="resources/images/icons/comment_48.png" alt="icon" /><br />
                Open Modal </span></a></li>
            </ul>
            <!-- End .shortcut-buttons-set -->
            <div class="clear"></div>
            <!-- End .clear -->
            <div class="content-box">
              <!-- Start Content Box -->
              <div class="content-box-header">
                <h3>修改商品信息</h3>
                <ul class="content-box-tabs">
                  <li><a href="#tab1" class="default-tab">Table</a></li>
                  <!-- href must be unique and match the id of target div -->
                  <li><a href="#tab2">Forms</a></li>
                </ul>
                <div class="clear"></div>
              </div>
              <!-- End .content-box-header -->
              <div class="content-box-content">
                <div class="tab-content default-tab" id="tab1">
                  <!-- This is the target div. id must match the href of this div's tab -->
                  <div class="notification attention png_bg"> <a href="#" class="close"><img src="resources/images/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
                    <div> This is a Content Box. You can put whatever you want in it. By the way, you can close this notification with the top-right cross. </div>
                  </div>
                  <table> 
                    <tbody> 
                      <tr>
                        <td colspan="6">
                      
                        </td>
                      </tr> 
                      <tr>
                            <td colspan="6">
                                <fieldset>
                    <!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->
                           <asp:GridView ID="gvItemsList" runat="server" AutoGenerateColumns="False" 
                                  DataKeyNames="ItemID"  EmptyDataText="没有可显示的数据记录。" AllowPaging="True" 
                                  PageSize="5" onrowcommand="gvItemsList_RowCommand" 
                                        onpageindexchanging="gvItemsList_PageIndexChanging">
                                  <Columns>
                                      <asp:BoundField DataField="ItemID" HeaderText="ItemID" ReadOnly="True"/>
                                      <asp:BoundField DataField="PName" HeaderText="PName" /> 
                                      <asp:BoundField DataField="BrandName" HeaderText="BrandName" />
                                      <asp:BoundField DataField="CName" HeaderText="CName" />
                                      <asp:BoundField DataField="ItemName" HeaderText="商品名" />
                                      <asp:BoundField DataField="Area" HeaderText="产地" />
                                      <asp:TemplateField HeaderText="修改">
                                        <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Bind("ItemID") %>' CommandName="xiugai"> 
                                            <img src="resources/images/icons/pencil.png" alt="Edit" />
                                            </asp:LinkButton>  
                                        </ItemTemplate>
                                      </asp:TemplateField>
                                      <asp:TemplateField HeaderText="删除">
                                          <ItemTemplate> 
                                              <asp:LinkButton ID="lbtnDelete" runat="server"  CommandArgument='<%#Bind("ItemID") %>' CommandName="shanchu"> 
                                                <img src="resources/images/icons/cross.png" alt="Delete" />
                                              </asp:LinkButton>
                                          </ItemTemplate>
                                      </asp:TemplateField> 
                                    </Columns>
                                  <PagerSettings FirstPageImageUrl="~/images/function/paging/FirstPage.png" 
                              LastPageImageUrl="~/images/function/paging/LastPage.png" 
                              Mode="NextPreviousFirstLast" 
                              NextPageImageUrl="~/images/function/paging/NextPage.png" PageButtonCount="1" 
                              PreviousPageImageUrl="~/images/function/paging/PreviousPage.png" />
                                  <HeaderStyle  Font-Size="Large" Font-Bold="true" />
                          </asp:GridView>

                     <p>
                          <label>商品名<asp:Label ID="lbItemID" runat="server"></asp:Label></label> 
                          <asp:TextBox ID="txtItemName" runat="server" CssClass="text-input small-input" ></asp:TextBox>
                     </p>
                     <p>
                        <label>所属品牌</label> 
                        <asp:DropDownList ID="ddlBrandID" runat="server" CssClass= "small-input">
                        </asp:DropDownList>
                    </p>
                    <p>
                      <label>分类</label>
                        <asp:DropDownList ID="ddlProductID" runat="server" CssClass= "small-input">
                        </asp:DropDownList>  
                    </p>
                     <p>
                          <label>产地</label> 
                          <asp:TextBox ID="txtArea" runat="server" CssClass="text-input small-input" ></asp:TextBox>
                     </p>
                    <p>
                      <label>商品详细介绍</label> 
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
                        <textarea id="Textarea1" runat="server" cols="20" name="S1" rows="1"  style="width:100%;height:200px; visibility:hidden; margin-bottom: 0px;"></textarea>
                    </p>  
                    
                    
                    
                    <!-- Start Notifications --> 
                    <asp:Panel ID="paneInfo" runat="server" Visible="false">
                        <div class="notification information png_bg" style=" height:40px">
                            <a class="close" href="#"> <img alt="close" src="resources/images/icons/cross_grey_small.png"  title="Close this notification" /> </a>
                            <div> <asp:Label ID="lbInfo" runat="server"></asp:Label>  
                            </div>
                        </div>
                    </asp:Panel> 
                    <asp:Panel ID="panelError" runat="server" Visible="false">
                        <div class="notification error png_bg" style=" height:40px">
                            <a class="close" href="#">  <img alt="close" src="resources/images/icons/cross_grey_small.png"  title="Close this notification" /></a>
                            <div>  <asp:Label ID="lbError" runat="server"></asp:Label>  </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="panelSuccess" runat="server" Visible="false">
                        <div class="notification success png_bg" style=" height:40px">
                            <a class="close" href="#"> <img alt="close" src="resources/images/icons/cross_grey_small.png"  title="Close this notification" /></a>
                            <div>  <asp:Label ID="lbSuccess" runat="server"></asp:Label>   </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="panelAttention" runat="server" Visible="false" >
                        <div class="notification attention png_bg" style=" height:40px">
                            <a class="close" href="#"> <img alt="close" src="resources/images/icons/cross_grey_small.png" title="Close this notification" />  </a>
                            <div> <asp:Label ID="lbAttention" runat="server"></asp:Label> </div>
                        </div>
                    </asp:Panel>
                    <!-- End Notifications -->
              

                    <p>
                        <asp:LinkButton ID="lbtnModify" runat="server" CssClass="button"  onclick="lbtnModify_Click" >更新</asp:LinkButton>
                    </p>
                    </fieldset>
                            </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <!-- End #tab1 -->
                <div class="tab-content" id="tab2"> 
                    <div class="clear"></div>
                    <!-- End .clear --> 
                </div>
                <!-- End #tab2 -->
              </div>
              <!-- End .content-box-content -->
            </div> 
            <div id="footer"> <small>
              <!-- Remove this notice or replace it with whatever you want -->
              &#169; Copyright 2010 Your Company | Powered by <a href="#">admin templates</a> | <a href="#">Top</a> </small> </div>
            <!-- End #footer -->
          </div>
          <!-- End #main-content -->
        </div>


    </form>
</body>
</html>
