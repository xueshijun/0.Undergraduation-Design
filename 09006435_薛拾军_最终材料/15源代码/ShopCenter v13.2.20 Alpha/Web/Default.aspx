<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default"  MaintainScrollPositionOnPostback="true"%>

<%@ Register src="UserControl/menu.ascx" tagname="menu" tagprefix="uc1" %>

<%@ Register src="UserControl/banner.ascx" tagname="banner" tagprefix="uc2" %>

<%@ Register src="UserControl/onshow.ascx" tagname="onshow" tagprefix="uc3" %>

<%@ Register src="UserControl/indexscroll.ascx" tagname="indexscroll" tagprefix="uc4" %>

<%@ Register src="UserControl/copyrightl.ascx" tagname="copyrightl" tagprefix="uc5" %>

<%@ Register src="UserControl/brand.ascx" tagname="brand" tagprefix="uc6" %>

<%@ Register src="UserControl/usertag.ascx" tagname="usertag" tagprefix="uc7" %>

<%@ Register src="UserControl/textadvertise.ascx" tagname="textadvertise" tagprefix="uc8" %>
 
<%@ Register src="UserControl/showNew.ascx" tagname="showNew" tagprefix="uc9" %>
  
 
<%@ Register src="UserControl/newFish.ascx" tagname="newFish" tagprefix="uc10" %>
  
 
<%@ Register src="UserControl/myRights.ascx" tagname="myRights" tagprefix="uc11" %>
  
 
<%@ Register src="UserControl/salePromotion.ascx" tagname="salePromotion" tagprefix="uc12" %>
  
 
<%@ Register src="UserControl/publicNotice.ascx" tagname="publicNotice" tagprefix="uc13" %>
  
 
<%@ Register src="UserControl/othersAction.ascx" tagname="othersAction" tagprefix="uc14" %>
  
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>在线商城</title>
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
    				
			        <uc3:onshow ID="onshow1" runat="server" />
    				
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
    	
    	

	    <div class="sec_pin left">
		    <div class="gusec_l left">
			    <div class="secleftad left">
				    <a href="#"><img src="images/seclad.jpg" border="0"></a></div>	
    			
			    <div class="secl_info right">
    			<uc12:salePromotion ID="salePromotion1" runat="server" />
    			
		            

				    <div class="selt2">
					    <ul>
						    <li><a href="#"><b>新手上路</b></a> </li> 
    						<uc10:newFish ID="newFish1" runat="server"/>
					    </ul> 
					    <ul>
						    <li><a href="#"><b>维权信息</b></a> </li>
    						<uc11:myRights ID="myRights1" runat="server" />  
                        </ul> 
				    </div>  
			    </div>
    			 
		    </div>
    	
		    <div class="gusec_r right">
	                <uc13:publicNotice ID="publicNotice1" runat="server" />
    				
	                <uc14:othersAction ID="othersAction1" runat="server" />
    			
		    </div>
    		
	    </div>

    	
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
         <script src="http://s17.cnzz.com/stat.php?id=5160696&web_id=5160696" language="JavaScript"></script>
    </div> 
    </div>
    </form>
</body>
</html>