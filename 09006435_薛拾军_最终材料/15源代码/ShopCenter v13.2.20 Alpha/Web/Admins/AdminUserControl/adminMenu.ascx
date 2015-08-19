<%@ Control Language="C#" AutoEventWireup="true" CodeFile="adminMenu.ascx.cs" Inherits="Admins_AdminUserControl_adminMenu" %>
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
                <li> <a href="#" class="nav-top-item current"> 文章管理 </a>
                  <ul> 
                    <li><a class="current" href="ArticleCategorys.aspx">文章分类</a></li>
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
                    <a href="#" class="nav-top-item" title="上架货物管理"> 商品信息管理 </a>
                    <ul>
                    <li><a href="ItemsAdd.aspx" title="新增商品信息">新增商品信息</a></li>
                    <li><a href="ItemsManage.aspx" title="商品信息更新">商品信息更新</a></li>
                    <li><a href="ItemSetting.aspx">秒杀商品设置</a></li> 
                    <li><a href="ItemsPricesModify.aspx">商品价格设置</a></li>
                    <li><a href="ItemsImgModify.aspx">商品配图</a></li>
                  </ul>
                </li>
                <li> <a href="#" class="nav-top-item"> Events Calendar </a>
                  <ul>
                    <li><a href="#">Calendar Overview</a></li>
                    <li><a href="#">Add a new Event</a></li>
                    <li><a href="#">Calendar Settings</a></li>
                  </ul>
                </li>
                <li> <a href="#" class="nav-top-item"> Settings </a>
                  <ul>
                    <li><a href="#">General</a></li>
                    <li><a href="#">Design</a></li>
                    <li><a href="#">Your Profile</a></li>
                    <li><a href="#">Users and Permissions</a></li>
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

           
          