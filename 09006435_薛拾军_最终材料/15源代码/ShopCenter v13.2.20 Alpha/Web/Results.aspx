<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Results.aspx.cs" Inherits="Admins_Results"  Debug="true"%>


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
		    </div> 
		    <div class="partc1_r right">  
			    <div class="partc1r_top left"> 

			        <asp:Label ID="lbMsg" runat="server"></asp:Label>

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

