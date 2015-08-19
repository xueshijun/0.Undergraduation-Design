<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyCar.aspx.cs" Inherits="Member_MyCar"  Debug="true" %>
 
<%@ Register src="../UserControl/myCarControl.ascx" tagname="myCarControl" tagprefix="uc1" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link rel="Stylesheet" href="member.css" />
<link rel="stylesheet" href="jsLib/themes/base/jquery.ui.all.css" />
<link rel="stylesheet" href="jsLib/jquery-smartMenu/css/smartMenu.css" />
</head>
<body>
    <form id="form1" runat="server"> 
    <div style=" margin-top:30%;">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <uc1:myCarControl ID="myCarControl1" runat="server" />
    </div>
    </form>
</body>
</html>
