<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Messages.aspx.cs" Inherits="Messages" %>
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
<head id="head" runat="server">
    <title></title>
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
	    <div class="partc1">
		    <div class="partc1_l left">
                 
    			
    			
		        <uc6:brand ID="brand1" runat="server" />
                 
    			
    			
		    </div>
    		
		    <div class="partc1_r right">
    			
    		

			    <div class="partc1r_top left">
    				
			         
    				
			    </div>
    	
			    <div class="partc1r_bot left">
    				
    					
			        <uc4:indexscroll ID="indexscroll1" runat="server" />
    				
    					
			    </div>
    		
		    </div>
    	
    	
    	
	    </div>

    </div>

    <div class="pagepart"> 
	    <div class="tip3top">
		    
 	        <uc9:showNew ID="showNew1" runat="server" />
		    
 	    </div>
     </div>

    <div class="pagepart">
    	
	    <div class="qpad left">
		    <a href="#"><img src="images/hf980ad60.jpg" border="0"></a>
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
