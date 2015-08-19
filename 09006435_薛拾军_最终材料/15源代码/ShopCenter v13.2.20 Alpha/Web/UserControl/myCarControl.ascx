<%@ Control Language="C#" AutoEventWireup="true" CodeFile="myCarControl.ascx.cs" Inherits="UserControl_myCarControl" %>

    <!--                       CSS                       -->
<!-- Reset Stylesheet -->
<link rel="stylesheet" href="../Admins/resources/css/reset.css" type="text/css" media="screen" />
<!-- Main Stylesheet -->
<link rel="stylesheet" href="../Admins/resources/css/mystyle.css" type="text/css" media="screen" />
<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
<link rel="stylesheet" href="../Admins/resources/css/invalid.css" type="text/css" media="screen" />
<!--                       Javascripts                       -->
<!-- jQuery -->
<script type="text/javascript" src="../Admins/resources/scripts/jquery-1.3.2.min.js"></script>
<!-- jQuery Configuration -->
<script type="text/javascript" src="../Admins/resources/scripts/simpla.jquery.configuration.js"></script>
<!-- Facebox jQuery Plugin -->
<script type="text/javascript" src="../Admins/resources/scripts/facebox.js"></script>
<!-- jQuery WYSIWYG Plugin -->
<script type="text/javascript" src="../Admins/resources/scripts/jquery.wysiwyg.js"></script>
<!-- jQuery Datepicker Plugin -->
<script type="text/javascript" src="../Admins/resources/scripts/jquery.datePicker.js"></script>
<script type="text/javascript" src="../Admins/resources/scripts/jquery.date.js"></script>
  


      <!-- Start Notifications -->
    
                    <asp:Panel ID="paneInfo" runat="server" Visible="false">
                        <div class="notification information png_bg" style=" height:40px">
                            <a class="close" href="#"> <img alt="close" src="resources/images/icons/cross_grey_small.png"  title="Close this notification" /> </a>
                            <div> <asp:Label ID="lbInfo" runat="server"></asp:Label> 
                                <asp:Label ID="lbImageID" runat="server"></asp:Label>
                                <asp:Label ID="lbItemId" runat="server"></asp:Label>
                            </div>
                        </div>
                    </asp:Panel> 
                    <asp:Panel ID="panelError" runat="server" Visible="false">
                        <div class="notification error png_bg" style=" height:40px">
                            <a class="close" href="#">  <img alt="close" src="resources/images/icons/cross_grey_small.png"  title="Close this notification" /></a>
                            <div>  <asp:Label ID="lbError" runat="server"></asp:Label>  </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="panelSuccess" runat="server" Visible="false">
                        <div class="notification success png_bg" style=" height:40px">
                            <a class="close" href="#"> <img alt="close" src="resources/images/icons/cross_grey_small.png"  title="Close this notification" /></a>
                            <div>  <asp:Label ID="lbSuccess" runat="server"></asp:Label>   </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="panelAttention" runat="server" Visible="false" >
                        <div class="notification attention png_bg" style=" height:40px">
                            <a class="close" href="#"> <img alt="close" src="resources/images/icons/cross_grey_small.png" title="Close this notification" />  </a>
                            <div> <asp:Label ID="lbAttention" runat="server"></asp:Label> 
                            </div>
                        </div>
                    </asp:Panel>
    <!-- End Notifications -->
    <asp:ScriptManagerProxy runat="server"></asp:ScriptManagerProxy>
<asp:UpdatePanel runat="server">
    <ContentTemplate> 
    
<asp:GridView ID="gvCarList" runat="server" AutoGenerateColumns="False"   
    DataKeyNames="IID"  EmptyDataText="没有可显示的数据记录。" Height="112px" 
    Width="564px" onrowcommand="gvCarList_RowCommand">
    <Columns>
        <asp:TemplateField HeaderText="商品ID号" SortExpression="IID">
            <ItemTemplate>
                <asp:Label ID="Label7" runat="server" Text='<%# Bind("IID") %>'></asp:Label>
            </ItemTemplate> 
            <ItemStyle Width="80px" HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="产地" SortExpression="Area">
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Area") %>'></asp:Label>
            </ItemTemplate> 
            <ItemStyle Width="50px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="商品名" SortExpression="商品名">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
            </ItemTemplate> 
            <ItemStyle Width="60px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="浏览次数" SortExpression="ViewTimes">
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("ViewTimes") %>'></asp:Label>
            </ItemTemplate> 
            <ItemStyle Width="70px" HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="购买次数" SortExpression="BuyTimes">
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("BuyTimes") %>'></asp:Label>
            </ItemTemplate> 
            <ItemStyle Width="70px" HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="添加时间" SortExpression="AddDate">
            <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Bind("AddDate") %>'></asp:Label>
            </ItemTemplate> 
        </asp:TemplateField>
        <asp:TemplateField HeaderText="商品数量" SortExpression="Count">
            <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Count") %>'></asp:Label>
            </ItemTemplate> 
        </asp:TemplateField>
        <asp:CheckBoxField DataField="IsPay" HeaderText="已付款" />
             
    </Columns>
    
</asp:GridView>  
    </ContentTemplate> 
</asp:UpdatePanel>
<asp:Timer runat="server" ID="Timer1" ontick="Timer1_Tick">
</asp:Timer>