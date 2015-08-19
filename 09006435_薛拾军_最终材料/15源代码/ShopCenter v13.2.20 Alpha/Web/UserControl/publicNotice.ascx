<%@ Control Language="C#" AutoEventWireup="true" CodeFile="publicNotice.ascx.cs" Inherits="UserControl_publicNotice" %>

<asp:FormView ID="formView" runat="server" Width="100%">
<ItemTemplate>
		    <h2>最新公告</h2>
			    <div class="gusec_tt">
				    <a href="#"><img src="images/rightbgtu.gif" border="0"></a>
				    <h3><asp:Label ID="lbTitle" runat="server" Text='<%# Bind("Title") %>'></asp:Label></h3>
			<div style="text-align:left; ">
                <asp:Label ID="lbContent" runat="server" Text='<%# Bind("Contents") %>'></asp:Label>
                <div style="float:right;">
                 <asp:LinkButton ID="lbtnMore" runat="server" CommandArgument='<%# Bind("ArticleID") %>' CommandName="view">更多</asp:LinkButton>
                 </div>
            
            </div> 
			    </div>
</ItemTemplate>
</asp:FormView>
