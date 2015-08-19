<%@ Control Language="C#" AutoEventWireup="true" CodeFile="myRights.ascx.cs" Inherits="UserControl_myRights" %>


<asp:DataList ID="ddlMyRight" runat="server" Width="100%" 
    onitemcommand="ddlMyRight_ItemCommand"> 
<ItemTemplate>
    <li>
        <asp:LinkButton ID="lbtnView" runat="server" CommandArgument='<%# Bind("ArticleID") %>' CommandName="view">
        <asp:Label ID="lbTitle" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
         </asp:LinkButton>
                  &nbsp;&nbsp;&nbsp; <sub>点击数:[<asp:Label ID="Label1" runat="server" Text='<%# Bind("ViewTimes") %>'></asp:Label>] </sub>
   </li>
  
</ItemTemplate>
</asp:DataList>  

  