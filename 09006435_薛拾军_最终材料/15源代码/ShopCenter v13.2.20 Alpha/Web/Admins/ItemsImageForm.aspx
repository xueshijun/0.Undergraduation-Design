﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ItemsImageForm.aspx.cs" Inherits="Admins_ItemsImageForm" %>

<%@ Register src="../UserControl/itemImages.ascx" tagname="itemImages" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <uc1:itemImages ID="itemImages2" runat="server" />
    </div>
    </form>
</body>
</html>
