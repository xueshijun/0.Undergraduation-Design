<%@ Control Language="C#" AutoEventWireup="true" CodeFile="newFish.ascx.cs" Inherits="UserControl_newFish" %>
 



<asp:DataList ID="ddlNewFish" runat="server" Width="100%" 
    onitemcommand="ddlNewFish_ItemCommand"> 
<ItemTemplate>
    <li>
     <asp:LinkButton ID="lbtnView" runat="server" CommandArgument='<%# Bind("ArticleID") %>' CommandName="view">
        <asp:Label ID="lbContent" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
        </asp:LinkButton> 
         &nbsp;&nbsp;&nbsp; <sub>点击数:[<asp:Label ID="Label1" runat="server" Text='<%# Bind("ViewTimes") %>'></asp:Label>] </sub>
    </li>
</ItemTemplate>
</asp:DataList> 