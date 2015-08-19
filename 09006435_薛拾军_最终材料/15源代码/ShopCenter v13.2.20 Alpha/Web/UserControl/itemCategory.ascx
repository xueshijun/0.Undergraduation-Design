<%@ Control Language="C#" AutoEventWireup="true" CodeFile="itemCategory.ascx.cs" Inherits="UserControl_itemCategory" %>
<table>
    <tr>
        <td colspan="6">
            <asp:GridView ID="gvCategory" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="CID" EmptyDataText="没有可显示的数据记录。" 
                onrowcommand="gvCategory_RowCommand">
                <Columns> 
                   <asp:TemplateField>
                        <HeaderTemplate>编号</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("CID")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>分类名</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("CName")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>描述</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Description")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>  
 
                     
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lbtnModify" runat="server" CommandArgument='<%# Bind("CID")%>' CommandName="Modify">
                                    <img src="resources/images/icons/hammer_screwdriver.png" alt="Edit Meta" />
                                </asp:LinkButton>
                        </ItemTemplate>
                        <HeaderTemplate>修改</HeaderTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </td>
    </tr>
</table>
<p></p>
   <!-- Start Notifications --> 
<asp:Panel ID="panelAttention" runat="server" Visible="false">
                <div class="notification attention png_bg">
                    <a class="close" href="#">
                <img alt="close" src="resources/images/icons/cross_grey_small.png" title="Close this notification" />
                    </a>
                    <div>
                        <asp:Label ID="lbAttention" runat="server" Text="  "></asp:Label>
                    </div>
                </div>
</asp:Panel>
<asp:Panel ID="paneInfo" runat="server" Visible="false">
    <div class="notification information png_bg">
        <a class="close" href="#"> <img alt="close" src="resources/images/icons/cross_grey_small.png"  title="Close this notification" />
        </a>
        <div>
            <asp:Label ID="lbInfo" runat="server" Text="  "></asp:Label>
        </div>
    </div>
</asp:Panel>
<asp:Panel ID="panelSuccess" runat="server" Visible="false">
    <div class="notification success png_bg">
        <a class="close" href="#">
                    <img alt="close" src="resources/images/icons/cross_grey_small.png" 
                        title="Close this notification" /></a>
        <div>
            <asp:Label ID="lbSuccess" runat="server" Text="  "></asp:Label>
        </div>
    </div>
</asp:Panel>
<asp:Panel ID="panelError" runat="server" Visible="false">
    <div class="notification error png_bg">
        <a class="close" href="#">
                <img alt="close" src="resources/images/icons/cross_grey_small.png" 
                    title="Close this notification" /></a>
        <div>
            <asp:Label ID="lbError" runat="server" Text=" "></asp:Label>
        </div>
    </div>
</asp:Panel>
<p>
    <label>
    分类名：</label>
    <asp:TextBox ID="txt2Name" runat="server" CssClass="text-input small-input"></asp:TextBox>
    <asp:Label ID="lbCID" runat="server"></asp:Label>
    <br />
    <small>A small description of the field</small>
</p>
<p>
    <label>
    分类描述：</label>
    <asp:TextBox ID="txt2Description" runat="server" 
        CssClass="text-input medium-input datepicker"></asp:TextBox>
    <br />
    <small>A small description of the field</small>
</p>
<p>
    <asp:LinkButton ID="lbtnModify0" runat="server" CssClass="button" 
        onclick="lbtnModify_Click">修改</asp:LinkButton>
</p>



