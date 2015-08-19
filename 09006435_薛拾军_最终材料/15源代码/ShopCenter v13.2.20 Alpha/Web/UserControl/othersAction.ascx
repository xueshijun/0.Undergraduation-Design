<%@ Control Language="C#" AutoEventWireup="true" CodeFile="othersAction.ascx.cs" Inherits="UserControl_othersAction" %>

<div style=" text-align:left; margin-left:15px; margin-top:20px;">
<h1><span>购物动态</span></h1>
<asp:DataList ID="ddlOtherAction" runat="server" Width="100%">
    <ItemTemplate> 
			<p><img src="images/function/new.gif">  
                <%# Eval("Name") %>
                <%# Eval("AddDate") %>

           </p>
    </ItemTemplate>
</asp:DataList>
</div>