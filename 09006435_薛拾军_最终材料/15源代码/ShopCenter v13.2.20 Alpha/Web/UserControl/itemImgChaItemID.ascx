<%@ Control Language="C#" AutoEventWireup="true" CodeFile="itemImgChaItemID.ascx.cs" Inherits="UserControl_itemImgChaItemID" %>

<asp:GridView ID="gvDetails" runat="server" AllowPaging="True" 
    AutoGenerateColumns="False" DataKeyNames="ImageID" EmptyDataText="没有可显示的数据记录。" 
    onpageindexchanging="gvDetails_PageIndexChanging" 
    onrowcommand="gvDetails_RowCommand" PageSize="5" Width="461px">
    <Columns>
        <asp:TemplateField HeaderText="SmallImg" SortExpression="SmallImg">
            <ItemTemplate>
                <a class="cloud-zoom" href='../<%# Eval("BigImg")%>' 
                    rel="position: 'inside' , showTitle: false, adjustX:-4, adjustY:-4">
                        <img alt="" src='../<%# Eval("SmallImg") %>'/>
                    </a>
            </ItemTemplate>
        </asp:TemplateField>


        <asp:BoundField DataField="ImageID" HeaderText="图片编号" ReadOnly="True" SortExpression="ImageID" />
        <asp:BoundField DataField="Name" HeaderText="商品名" ReadOnly="True" />
        <asp:TemplateField>
            <HeaderTemplate>
                删除
            </HeaderTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="lbtnAdd" runat="server"  CommandArgument='<%# Bind("ImageID")%>' CommandName="shanchu" 
                 onclientclick="return confirm('你确认要删吗?')">  
                    <img alt="Delete" src="resources/images/icons/cross.png" /> 
                 </asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
   <asp:TemplateField>
                <HeaderTemplate>修改</HeaderTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="lbtnModify" runat="server" CommandArgument='<%# Bind("ImageID")%>' CommandName="Modify"> 
                           <img alt="Edit Meta" src="resources/images/icons/hammer_screwdriver.png" /> 
                    </asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField> 

        </Columns>
    <PagerSettings FirstPageImageUrl="~/images/function/paging/FirstPage.png" 
        LastPageImageUrl="~/images/function/paging/LastPage.png" 
        Mode="NextPreviousFirstLast" 
        NextPageImageUrl="~/images/function/paging/NextPage.png" PageButtonCount="1" 
        PreviousPageImageUrl="~/images/function/paging/PreviousPage.png" />
    <HeaderStyle Font-Bold="true" Font-Size="Large" />
</asp:GridView>

<asp:DropDownList ID="ddlItemClass" runat="server">
</asp:DropDownList>

<br />

<asp:Button ID="btnModify" runat="server" onclick="btnModify_Click" 
    Text="确认修改" />


