<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MemberInfo.aspx.cs" Inherits="Member_MemberInfo" %>

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
    <div>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="UID" DataSourceID="SqlDataSource1" EmptyDataText="没有可显示的数据记录。">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="UID" HeaderText="UID" ReadOnly="True" 
                SortExpression="UID" InsertVisible="False" />
            <asp:BoundField DataField="VID" HeaderText="VID" SortExpression="VID"  ReadOnly="True" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Pass" HeaderText="Pass" SortExpression="Pass" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Tel" HeaderText="Tel" SortExpression="Tel" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:BoundField DataField="IP" HeaderText="IP" SortExpression="IP" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" 
        DeleteCommand="DELETE FROM [User] WHERE [UID] = @UID" 
        InsertCommand="INSERT INTO [User] ([VID], [Name], [Pass], [Email], [Phone], [Tel], [Address], [IP]) VALUES (@VID, @Name, @Pass, @Email, @Phone, @Tel, @Address, @IP)" 
        ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" 
        SelectCommand="SELECT [UID], [VID], [Name], [Pass], [Email], [Phone], [Tel], [Address], [IP] FROM [User] WHERE ([UID] = @UID)" 
        
        UpdateCommand="UPDATE [User] SET [VID] = @VID, [Name] = @Name, [Pass] = @Pass, [Email] = @Email, [Phone] = @Phone, [Tel] = @Tel, [Address] = @Address, [IP] = @IP WHERE [UID] = @UID">
        <DeleteParameters>
            <asp:Parameter Name="UID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="VID" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Pass" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Tel" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="IP" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="UID" SessionField="UID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="VID" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Pass" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Tel" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="IP" Type="String" />
            <asp:Parameter Name="UID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
