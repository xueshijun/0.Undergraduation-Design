<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ArticleDetails.aspx.cs" Inherits="ArticleDetails" %>
<%@ Register src="UserControl/menu.ascx" tagname="menu" tagprefix="uc1" %>

<%@ Register src="UserControl/banner.ascx" tagname="banner" tagprefix="uc2" %>

<%@ Register src="UserControl/onshow.ascx" tagname="onshow" tagprefix="uc3" %>

<%@ Register src="UserControl/indexscroll.ascx" tagname="indexscroll" tagprefix="uc4" %>

<%@ Register src="UserControl/copyrightl.ascx" tagname="copyrightl" tagprefix="uc5" %>

<%@ Register src="UserControl/brand.ascx" tagname="brand" tagprefix="uc6" %>

<%@ Register src="UserControl/usertag.ascx" tagname="usertag" tagprefix="uc7" %>

<%@ Register src="UserControl/textadvertise.ascx" tagname="textadvertise" tagprefix="uc8" %>
 
<%@ Register src="UserControl/showNew.ascx" tagname="showNew" tagprefix="uc9" %>
  
<%@ Register src="UserControl/seckill.ascx" tagname="seckill" tagprefix="uc10" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
<link rel="shortcut icon" href="images/banner/favicon.ico" type="image/x-icon" />
<link href="css/style.css" rel="stylesheet" type="text/css" /> 
<script src="js/jquery-1.4.2.min.js" type="text/javascript"></script>  
<script type="text/javascript" src="js/index_man.js"></script>
    <style type="text/css">
        .style1
        {
            width: 738px;
        }
    </style>
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
    			
    		

		    </div>
    	
    	
    	
	    </div>

    </div>

    <div class="pagepart" style=" padding-left:20px;"> 
	    <div class="tip3top">
		    
 	        <asp:FormView ID="formContent" runat="server" runat="server"  DataKeyNames="ArticleID"  Width="100%">
               <ItemTemplate> 
                    <table width="100%">
                    <thead>
                    <tr>
                        <td colspan="3" align="center">
                           <h1><asp:Label ID="TitleLabel" runat="server" Text='<%# Bind("Title") %>' /></h1>
                        </td>
                    </tr>
               </thead>
                    <tbody>
                        <tr>
                            <td class="style1"> 
                            </td>
                            <td>
                                
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:Label ID="ContentsLabel" runat="server" Text='<%# Bind("Contents") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <span>发布时间：</span>   <asp:Label ID="PubDateLabel" runat="server" Text='<%# Bind("PubDate") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                               
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                 <span>作者：</span>  <asp:Label ID="AuthorLabel" runat="server" Text='<%# Bind("Author") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="style1"> 
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                               <span>浏览次数：</span> <asp:Label ID="ViewTimesLabel" runat="server" Text='<%# Bind("ViewTimes") %>' />
                            </td>
                        </tr>
                  </tbody>
                 </table>
                </ItemTemplate>
                 </asp:FormView> 
		    
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
