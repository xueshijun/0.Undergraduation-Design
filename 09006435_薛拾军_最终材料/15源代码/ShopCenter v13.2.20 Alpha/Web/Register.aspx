
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<%@ Register src="UserControl/register.ascx" tagname="register" tagprefix="uc1" %>

<%@ Register src="UserControl/usertag.ascx" tagname="usertag" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
   
<link rel="shortcut icon" href="images/banner/favicon.ico" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">  <center>
     <div id="site-nav" role="navigation"> 
         
         <uc2:usertag ID="usertag1" runat="server" /> 
    </div>
     <div style=" margin-top:50px;">
   
        <uc1:register ID="register1" runat="server" />
 
    </div>
    </center>
    </form>
</body>
</html>
