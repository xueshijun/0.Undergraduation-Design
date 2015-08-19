<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SeckillDetails.aspx.cs" Inherits="SeckillDetails" %>

<%@ Register src="UserControl/menu.ascx" tagname="menu" tagprefix="uc1" %>

<%@ Register src="UserControl/banner.ascx" tagname="banner" tagprefix="uc2" %>

<%@ Register src="UserControl/onshow.ascx" tagname="onshow" tagprefix="uc3" %>

<%@ Register src="UserControl/indexscroll.ascx" tagname="indexscroll" tagprefix="uc4" %>

<%@ Register src="UserControl/copyrightl.ascx" tagname="copyrightl" tagprefix="uc5" %>

<%@ Register src="UserControl/brand.ascx" tagname="brand" tagprefix="uc6" %>

<%@ Register src="UserControl/usertag.ascx" tagname="usertag" tagprefix="uc7" %>

<%@ Register src="UserControl/textadvertise.ascx" tagname="textadvertise" tagprefix="uc8" %>
 
<%@ Register src="UserControl/showNew.ascx" tagname="showNew" tagprefix="uc9" %>
  
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link rel="shortcut icon" href="images/banner/favicon.ico" type="image/x-icon" />
    <link href="css/style.css" rel="stylesheet" type="text/css" /> 
    <script src="js/jquery-1.4.2.min.js" type="text/javascript"></script>  
    <script type="text/javascript" src="js/index_man.js"></script>
</head>
<body>
    <form id="form1" runat="server"> 
    <div id="site-nav" role="navigation">  
        <uc7:usertag ID="usertag1" runat="server" /> 
    </div>

    <div class="pagepart">
        <div style="width:980px;margin:0 auto;font-weight:bold;color:red;">  
        <uc2:banner ID="banner1" runat="server" />
	    <uc1:menu ID="menu1" runat="server" />
	</div>
    </div>
 
  
 
    <div class="pagepart"> 
        <div class="partc2">		
        <div class="partc2_l left">  
                    <div class="zoom-section">    	  
                        <div class="zoom-small-image">
                      <!-- <a href='<%#Eval("Bi") %>' class = 'cloud-zoom' id='zoom1' rel="adjustX: 10, adjustY:-4">
                          </a>-->
                            <asp:Image ID="imgSmallImg" runat="server" width="240px" height="320px" title="Optional title display"/>
                         </div>
                        <div class="zoom-desc">
                            <h3>
                                <asp:Label ID="lbName" runat="server"></asp:Label>
                                <asp:Label ID="lbSeckillID" runat="server" Visible="False"></asp:Label>
                            </h3>       
                            <p>
                                <asp:DataList ID="ddlImgList" runat="server" RepeatColumns="5"  RepeatDirection="Horizontal">
                                <ItemTemplate>
                                    <a href='<%#Eval("BigImg") %>' class='cloud-zoom-gallery' title='Red' rel="useZoom: 'zoom1', smallImage: '<%#Eval("SmallImg") %>' ">
                                        <img class="zoom-tiny-image"  src='<%#Eval("SmallImg") %>' width="48px" height="64px" alt = "Thumbnail 1"/>
                                    </a>  
                                </ItemTemplate>
                                </asp:DataList> 
                            </p> 
               
                        </div>
         
                        <div class="zoom-desc">   
                              <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:Timer ID="timerCD" runat="server" Interval="1000" OnTick="timerCD_Tick">
                                </asp:Timer>
                                <span  style=" font-family:Copperplate Gothic Light; color:Maroon; font-size:larger; font-stretch:extra-condensed" >秒杀剩余时间</span>
                                <span class="contact_number">
                                    <asp:Label ID="lbDays" runat="server" Text="9" Font-Bold="True" 
                                    Font-Names="Copperplate Gothic Light" ForeColor="Maroon"></asp:Label>
                                </span>&nbsp;
                                <span class="p_hui">天</span>
                                <span class="contact_number">
                                <asp:Label ID="lbHour" runat="server"  Text="9" Font-Bold="True" 
                                    Font-Names="Copperplate Gothic Light" ForeColor="Maroon"></asp:Label>
                                </span>&nbsp;<span class="p_hui">时</span>&nbsp;
                                <span class="contact_number">
                                <asp:Label ID="lbMinute" runat="server"  Text="9" Font-Bold="True" 
                                    Font-Names="Copperplate Gothic Light" ForeColor="Maroon"></asp:Label>
                                </span>&nbsp;<span class="p_hui">分</span>&nbsp;
                                <span class="contact_number">
                                <asp:Label ID="lbSecond" runat="server" Text="9" Font-Bold="True" 
                                    Font-Names="Copperplate Gothic Light" ForeColor="Maroon"></asp:Label>
                                </span>&nbsp;<span class="p_hui">秒</span>
                                <span class="contact_number">
                                <asp:Label ID="labTimes" runat="server" Width="155px" Visible="false"></asp:Label></span>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        </div>
                                  
                        <div class="zoom-desc">
                           <p> 
                                <asp:Label ID="lbDetails" runat="server" ></asp:Label>
                                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                                <asp:ImageButton ID="imBtnKill" runat="server" 
                                    ImageUrl="~/images/function/miaosha.png" onclick="imBtnKill_Click" />
                            </p>
                        </div>
                    </div>
               
         </div>
    		
		    <div class="partc2_r right">
		      <div class="partc2r_top left">  <img alt="" src="images/seckill/seckill.jpg" 
                      width="350px" height="370px" /> </div>
            </div>
    </div>
    </div>
    <div class="pagepart"> 
	    <div class="tip3top">
		    
 	    </div>
     </div>

    <div class="pagepart">   
        <div class="foot_alter225">
       
        <uc8:textadvertise ID="textadvertise1" runat="server" />
       
    </div>
        <div  class="foot">

        <uc5:copyrightl ID="copyrightl1" runat="server" />

    </div>
    </div>
    </form>
</body>
</html>
