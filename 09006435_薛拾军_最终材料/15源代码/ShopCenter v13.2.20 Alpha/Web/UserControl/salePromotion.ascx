<%@ Control Language="C#" AutoEventWireup="true" CodeFile="salePromotion.ascx.cs" Inherits="UserControl_salePromotion" %>


<asp:DataList ID="ddlOnSale" runat="server" Width="100%" 
    onitemcommand="ddlOnSale_ItemCommand" >    
    <ItemTemplate>
        <div class="selt1">
		  <img src="images/80tu.gif">
		  <h3>
           <asp:LinkButton ID="lbtnView" runat="server" CommandArgument='<%# Bind("ArticleID") %>' CommandName="view">
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
           </asp:LinkButton> 
          </h3> 
			<div style="text-align:left; padding-left:100px; ">
                <asp:Label ID="lbContent" runat="server" Text='<%# Bind("Contents") %>'></asp:Label>
                <div style="float:right;">
                 <asp:LinkButton ID="lbtnMore" runat="server" CommandArgument='<%# Bind("ArticleID") %>' CommandName="view">更多</asp:LinkButton>
                 </div>
            
            </div> 
             
     </div>
</ItemTemplate>
</asp:DataList>