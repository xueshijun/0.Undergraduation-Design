<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Decorations.aspx.cs" Inherits="Decorations" %>

<%@ Register src="UserControl/menu.ascx" tagname="menu" tagprefix="uc1" %>

<%@ Register src="UserControl/banner.ascx" tagname="banner" tagprefix="uc2" %>

<%@ Register src="UserControl/onshow.ascx" tagname="onshow" tagprefix="uc3" %>

<%@ Register src="UserControl/indexscroll.ascx" tagname="indexscroll" tagprefix="uc4" %>

<%@ Register src="UserControl/copyrightl.ascx" tagname="copyrightl" tagprefix="uc5" %>

<%@ Register src="UserControl/brand.ascx" tagname="brand" tagprefix="uc6" %>

<%@ Register src="UserControl/usertag.ascx" tagname="usertag" tagprefix="uc7" %> 

<%@ Register src="UserControl/textadvertise.ascx" tagname="textadvertise" tagprefix="uc10" %>


<%@ Register src="UserControl/wearmenu.ascx" tagname="wearmenu" tagprefix="uc8" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
<link rel="shortcut icon" href="images/banner/favicon.ico" type="image/x-icon" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.4.2.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/index_man.js"></script>
<link href="css/showwear.css" rel="stylesheet" type="text/css" />


<!--连续看图--->

 	<link rel="stylesheet" href="css/magicthumb.css" type="text/css" media="screen, projection"/>
	<script type="text/javascript" src="js/magicthumb-packed.js"></script>
	<style type="text/css">
 
    	a {color:#91b817;}
    	a:hover {text-decoration:none;}
    	.cp, .cp a {color:#888;font-size:11px;}
	</style>
<!--连续看图--->

 

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
	    <div class="partc1">
		    <div class="partc1_l left"> 
		         <div class="seain">
				    <h2>
                        <asp:LinkButton ID="lbtnAll" runat="server" onclick="lbtnAll_Click">分类</asp:LinkButton></h2>
				    <ul>
                    <asp:DataList ID="ddlClassMenu" runat="server"  onitemcommand="ddlClassMenu_ItemCommand">
                    <ItemTemplate> 
					    <li>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="xuan" CommandArgument='<%#Eval("PID") %>'>
                            <%#Eval("Name")%> 
                            </asp:LinkButton>
                        </li>
                    </ItemTemplate>
                    </asp:DataList> 
				</ul>  
			    </div> 
		    </div> 
		    <div class="partc1_r right">  
			    <div class="partc1r_top left"> 
    				<div class="consec_top left"> 
					    <div class="consectop_l left">  </div> 
					    <div class="consectop_r left">
						<div class="consectr_top "> <img src="images/showwear/box-full-top.gif"> </div>
						<div class="consectr_mid" style="min-height:780px;">
							<ul>  

                                <asp:DataList ID="ddlWomen" runat="server" RepeatColumns="3"  RepeatDirection="Horizontal" onitemcommand="ddlWomen_ItemCommand">
                                    <ItemTemplate>
								    <li>   
                                        <h1><a><center style="margin-top:5px;"><%#Eval("ItemName")%> <sup>&#8482;</sup></center></a> </h1>
									    <div class="likuang">
									        <label>￥<%#Eval("AgoraPrice")%>元 </label>  
                                            <span> | </span>
                                            <asp:LinkButton ID="lbtnBuy1" runat="server" CommandName="buy" CommandArgument='<%#Eval("ItemID") %>'>现在购买</asp:LinkButton>
                                         </div>
									    <div class="liimgk">
									     <%--<img src="images/showwear/34253-m.jpg">--%> 
                                         <a href='<%#Eval("BigImg") %>' class="MagicThumb"> 
                                       
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("SmallImg") %>'  Width="145px" Height="156px"  AlternateText='<%#Eval("Alt") %>' ToolTip='<%#Eval("ItemName") %>'/>
                                            <span>点击查看详细信息!<br/> 
                                            <b style="float: right;"> </b></span>
	
                                         </a>
									    </div>
									    
									    
									
									    <div class="likuang"> 
                                            <asp:LinkButton ID="lbtnBuy2" runat="server" CommandName="buy" CommandArgument='<%#Eval("ItemID") %>'>现在购买</asp:LinkButton>
                                            <span>|</span> 
									        <asp:LinkButton ID="ddlDetails" runat="server" CommandName="cha" CommandArgument='<%#Eval("ItemID") %>'>查看详细</asp:LinkButton>
									    </div> 
									 
								    </li>
                                </ItemTemplate> 
                                    <FooterTemplate>
      <!-- Start Notifications -->
        <div class="notification attention png_bg"> <a href="#" class="close">
        <img src="Admins/resources/images/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
          <div>请慢慢挑选！</div>
        </div>
 
                                    </FooterTemplate>
                                </asp:DataList>   
                        
							</ul>       
                              <table width="100%">
                                    <tr>
                                        <td style="width:15%;"></td>
                                        <td style="width:15%;">共[<asp:Label ID="lbcurrentPage" runat="server" Text="1"></asp:Label>
                                            ]页</td>
                                        <td style="width:15%;">当[<asp:Label ID="lbpageCount" runat="server"></asp:Label>]页</td>
                                        <td style="width:10%;"><asp:LinkButton ID="lbFirst" runat="server" CommandName="first"  onclick="LinkButton_Click">首页</asp:LinkButton></td>
                                        <td style="width:10%;"><asp:LinkButton ID="lbPrev" runat="server" CommandName="prev" onclick="LinkButton_Click">上一页</asp:LinkButton></td>
                                        <td style="width:10%;"><asp:LinkButton ID="lbNext" runat="server" CommandName="next"  onclick="LinkButton_Click">下一页</asp:LinkButton></td>
                                        <td style="width:10%;"> <asp:LinkButton ID="lbLast" runat="server" CommandName="last"  onclick="LinkButton_Click">尾页</asp:LinkButton> </td>
                                        <td style="width:15%;"><asp:Label ID="lbPID" runat="server" Text="-1" Visible="False"></asp:Label> </td>
                                        
                                    </tr>
                                </table>
						</div> 
						<div class="consectr_bot"> <img src="images/showwear/box-full-bottom.gif">	 </div> 
					</div> 
				    </div> 
			    </div> 
			    <div class="partc1r_bot left"> </div> 
		    </div> 
	    </div> 
    </div> 

    <div class="pagepart"> 
        <div class="foot_alter225"> 
        <uc10:textadvertise ID="textadvertise1" runat="server" /> 
    </div>
        <div  class="foot"> 
        <uc5:copyrightl ID="copyrightl1" runat="server" /> 
    </div> 
    </div>
    </form>
</body>
</html>
