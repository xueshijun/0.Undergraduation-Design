<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HotmallDetails.aspx.cs" Inherits="HotmallDetails" %>


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
<head id="Head1" runat="server">
    <title>查看女装</title>
    
<link rel="shortcut icon" href="images/banner/favicon.ico" type="image/x-icon" />
<link href="css/style.css" rel="stylesheet" type="text/css" /> 
<script src="js/jquery-1.4.2.min.js" type="text/javascript"></script>  
<script type="text/javascript" src="js/index_man.js"></script>



<!--女装-->
<link href="css/zoom/cloud-zoom.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/zoom/slimbox2.css" type="text/css" media="screen" />
<link href="css/zoom/jquery-ui-1.7.2.custom.css" rel="stylesheet" type="text/css" />
<link href="css/zoom/main.css" rel="stylesheet" type="text/css" />


<script type="text/javascript" src="js/zoom/jquery.min.js"></script>
<script type="text/javascript" src="js/zoom/jquery.cookie.js"></script> 
<script type="text/javascript" src="js/zoom/jquery.aall.1.0.0.js"></script>
<script type="text/javascript" src="js/zoom/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/zoom/showhide.js"></script>
<script type="text/JavaScript" src="js/zoom/slimbox2.js"></script>
<script type="text/javascript" src="js/zoom/cloud-zoom.1.0.2.js"></script> 
 

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
            <asp:FormView ID="formViewDetails" runat="server">
                <ItemTemplate>
                    <div class="zoom-section">    	  
                        <div class="zoom-small-image">
                              <a href='<%#Eval("BigImg") %>' class = 'cloud-zoom' id='zoom1' rel="adjustX: 10, adjustY:-4">
                                <img src='<%#Eval("SmallImg") %>' alt=' ' width="240px" height="320px" title="Optional title display" />
                              </a>
                        </div>
                        <div class="zoom-desc">
                            <h3><%#Eval("Name") %></h3>       
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
                            <p><%#Eval("Details") %></p> 
                        </div>
                             <div class="zoom-desc">  
                             <label> <span>浏览次数：<%#Eval("ViewTimes") %></span> </label><br />
                            <label><span>购买次数：<%#Eval("BuyTimes")%></span></label> 
                            </div>
                    </div>
                </ItemTemplate>
            </asp:FormView>
        
         </div>
    		
		    <div class="partc2_r right">
		      <div class="partc2r_top left">  <img alt="" src="images/girls/ad.jpg" width="350px" height="370px" /> </div>
            </div>
    </div>
    </div>
    <div class="pagepart"> 
	    <div class="tip3top">
		    
 	        <uc9:showNew ID="showNew1" runat="server" />
		    
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

