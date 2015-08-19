<%@ Control Language="C#" AutoEventWireup="true" CodeFile="brand.ascx.cs" Inherits="UserControl_brand" %>

<asp:DataList ID="DataList1" runat="server">

<ItemTemplate>
<div style="border-bottom-color:Gray; border-bottom-style:groove; border-bottom-width:1;">
<asp:Image ID="Image1" runat="server"  ImageUrl='<%# Bind("Img") %>' ToolTip='<%# Bind("BrandName") %>'/>
</div>
</ItemTemplate>
</asp:DataList>
<p>
&nbsp;</p>
