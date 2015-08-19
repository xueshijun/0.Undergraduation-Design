<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Seckill.aspx.cs" Inherits="Seckill" %>
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
<head runat="server">
    <title>无标题页</title>
<link rel="shortcut icon" href="images/banner/favicon.ico" type="image/x-icon" />
<link href="css/style.css" rel="stylesheet" type="text/css" /> 
<script src="js/jquery-1.4.2.min.js" type="text/javascript"></script>  
<script type="text/javascript" src="js/index_man.js"></script>
<link href="css/showwear.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

.likuang{width:143px;margin:11px 14px;float:left;display:inline;border:1px solid #DEDEDE; background:#F7F7F7;height:25px;line-height:25px;font-size:12px;}
.likuang label{width:69px;float:left;text-align:center; color:#85200B;}
.liimgk{width:145px;margin:0 14px;float:left;display:inline;}
    </style>
<!--女装-->

<link href="cloud-zoom/css/jquery-ui-1.7.2.custom.css" rel="stylesheet" type="text/css" />
<link href="cloud-zoom/styles/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="cloud-zoom/js/jquery.min.js"></script>
<script type="text/javascript" src="cloud-zoom/js/jquery.cookie.js"></script>

<script type="text/javascript" src="cloud-zoom/js/jquery.aall.1.0.0.js"></script>
<script type="text/javascript" src="cloud-zoom/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="cloud-zoom/js/showhide.js"></script>
<link rel="stylesheet" href="cloud-zoom/css/slimbox2.css" type="text/css" media="screen" />
<script type="text/JavaScript" src="cloud-zoom/js/slimbox2.js"></script>
<link href="cloud-zoom/styles/cloud-zoom.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="cloud-zoom/js/cloud-zoom.1.0.2.js"></script>

<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-254857-6']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

<!--end-->
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
  <div class="consectr_mid" style="min-height:780px; margin-left:-60px;">
		    <ul> 
                 <asp:DataList ID="ddlWomen" runat="server" RepeatColumns="5"  RepeatDirection="Horizontal"  onitemcommand="ddlWomen_ItemCommand">
                                <ItemTemplate>
								    <li>   
								        <center style="margin-top:5px;"><%#Eval("Name")%> </center> 
									    <div class="likuang" style="padding-left:2px">
									    距离结束:<%#Eval("Days") %>天<%#Eval("Hours") %>时<%#Eval("Minutes") %>分<%#Eval("Seconds") %>秒  
                                         </div>
									    <div class="liimgk"> 
									       <a href='<%#Eval("BigImg") %>' class = 'cloud-zoom' rel="position: 'inside' , showTitle: false, adjustX:-4, adjustY:-4">
       
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("SmallImg") %>'  Width="145px" Height="156px"  AlternateText='<%#Eval("Alt") %>' ToolTip='<%#Eval("Name") %>'/>
                                            </a>
									    </div> 
									    <div class="likuang"> 
                                            <label>￥<%#Eval("AgoraPrice")%>元 </label> 
                                            <span>|</span> 
									        <asp:LinkButton ID="ddlDetails" runat="server" CommandName="miao" CommandArgument='<%#Eval("IID") %>'>立即抢拍</asp:LinkButton>
									    </div> 
									 
								    </li>
                                </ItemTemplate> 
                                </asp:DataList>       
            </ul>     
        </div>
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
