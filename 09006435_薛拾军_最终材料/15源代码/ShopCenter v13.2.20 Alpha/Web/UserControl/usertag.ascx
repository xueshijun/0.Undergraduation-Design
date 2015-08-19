<%@ Control Language="C#" AutoEventWireup="true" CodeFile="usertag.ascx.cs" Inherits="UserControl_usertag" %>
    
<%@ Register src="myCarControl.ascx" tagname="myCarControl" tagprefix="uc1" %>
<link rel="Stylesheet" href="css/topheader.css" /> 
    
  
  
<link rel="Stylesheet" href="css/noticification.css" /> 
                    
                    
 <div id="site-nav-bd">  
       <iframe src="UserControl/LoginState.aspx" frameborder="no" scrolling="no" style=" float:left; width:300px; height:20px; margin-top:0px;" ></iframe>
       
       <asp:ScriptManager ID="ScriptManager2" runat="server">
       </asp:ScriptManager>
       

       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <asp:Timer ID="Timer1" runat="server" ontick="Timer1_Tick" Interval="1000" />
        <ul class="quick-menu">
            <li class="menu-item">
                <a href="Default.aspx">首页</a>
            </li>
            <li class="menu-item">  
            <a href="/DownloadFile/GraduationDesign.apk">  <asp:Image ID="Image1" runat="server"  ImageUrl="~/images/function/download_android_no.jpg" Height="23px" Width="95px" />
 </a>
            </li>  
            <li class="cart mini-cart menu">
           <a id="mc-menu-hd" class="menu-hd"  rel="modal" target="_top"  tabindex="0" aria-haspopup="menu-4" aria-label="右键弹出菜单，tab键导航，esc关闭当前菜单">
                    <span class="mini-cart-line"></span>
                    <s></s>购物车
                    <span class="mc-count mc-pt3" >
                    <asp:Label ID="lbCarCount"  runat="server" Text="0"></asp:Label>件 
                    </span> 
                    </a>
                <div id="menu-4" class="mini-cart-content menu-bd mini-cart-ready" role="menu" aria-hidden="true">
            <div class="mini-cart-bt">
            <a href="#" target="_top">查看我的购物车</a>  您购物车里还没有任何宝贝。
            </div>
            </div>
            </li>
            <li class="favorite menu-item">
                <div class="menu"> 
                    <div id="menu-3" class="menu-bd" style="width:82px;height:57px;line-height:1.7;" role="menu" aria-hidden="true">
                    <div class="menu-bd-panel" style="padding:8px 10px;">
                    <div>
                        <a rel="nofollow" target="_top" href="#"></a> 
                    </div>
                </div>
                </div>
                </div>
            </li>
            <li class="services menu-item last">
                <div id="J_Service" class="menu">
              
                    <div id="J_ServicesContainer" class="menu-bd" style="width: 202px; height: auto;" role="menu" aria-hidden="true">
                    <div class="menu-bd-panel"> 
                    <dl class="last">
                </div>
                </div>
                </div>
            </li>
</ul> 
       </ContentTemplate>
</asp:UpdatePanel>  
   
</div>



      <!-- Begin #ShoppingCar -->
      <div id="messages"  style="display: none">
          
          <asp:Panel ID="panelLoginFailed" runat="server"  style=" margin-top:20px;">  
              <!-- Start Notifications -->
                <div class="notification attention png_bg"> 
                    <a href="#" class="close"><img src="Admins/resources/images/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
                    <div> 对不起，您还没有登录！请先<a href="Register.aspx">注册</a>/<a href="Login.aspx">登录</a></div>
                </div>
           
                <!-- End Notifications --> 
          </asp:Panel>
          <asp:Panel ID="panelLoginSuccess" runat="server" Visible="false">  
                  <fieldset>
                        <uc1:myCarControl ID="myCarControl1" runat="server" />
                  </fieldset>
        </asp:Panel>
      </div>
      <!-- End #ShoppingCar -->  
 



  




