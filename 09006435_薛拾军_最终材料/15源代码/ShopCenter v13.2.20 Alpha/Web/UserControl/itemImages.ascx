<%@ Control Language="C#" AutoEventWireup="true" CodeFile="itemImages.ascx.cs" Inherits="UserControl_itemImages" %>
 
  
    <!--                       CSS                       -->
<!-- Reset Stylesheet -->
<link rel="stylesheet" href="resources/css/reset.css" type="text/css" media="screen" />
<!-- Main Stylesheet -->
<link rel="stylesheet" href="resources/css/style.css" type="text/css" media="screen" />
<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
<link rel="stylesheet" href="resources/css/invalid.css" type="text/css" media="screen" />
<!--                       Javascripts                       -->
<!-- jQuery -->
<script type="text/javascript" src="resources/scripts/jquery-1.3.2.min.js"></script>
<!-- jQuery Configuration -->
<script type="text/javascript" src="resources/scripts/simpla.jquery.configuration.js"></script>
<!-- Facebox jQuery Plugin -->
<script type="text/javascript" src="resources/scripts/facebox.js"></script>
<!-- jQuery WYSIWYG Plugin -->
<script type="text/javascript" src="resources/scripts/jquery.wysiwyg.js"></script>
<!-- jQuery Datepicker Plugin -->
<script type="text/javascript" src="resources/scripts/jquery.datePicker.js"></script>
<script type="text/javascript" src="resources/scripts/jquery.date.js"></script>



<!--Begin Zoom-->

<link href="../css/zoom/cloud-zoom.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="../css/zoom/slimbox2.css" type="text/css" media="screen" />
<link href="../css/zoom/jquery-ui-1.7.2.custom.css" rel="stylesheet" type="text/css" />
<link href="../css/zoom/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/zoom/jquery.min.js"></script>
<script type="text/javascript" src="../js/zoom/jquery.cookie.js"></script> 
<script type="text/javascript" src="../js/zoom/jquery.aall.1.0.0.js"></script>
<script type="text/javascript" src="../js/zoom/jquery-ui.min.js"></script>
<script type="text/javascript" src="../js/zoom/showhide.js"></script>
<script type="text/JavaScript" src="../js/zoom/slimbox2.js"></script>
<script type="text/javascript" src="../js/zoom/cloud-zoom.1.0.2.js"></script> 
   
<!--End Zoom-->

        <table>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="gvImage" runat="server" AllowSorting="True"
        AutoGenerateColumns="False" DataKeyNames="IID"   
        EmptyDataText="没有可显示的数据记录。" onrowcommand="gvImage_RowCommand" 
            AllowPaging="True" onpageindexchanging="gvImage_PageIndexChanging" PageSize="5">
        <Columns>
            <asp:TemplateField>
            <HeaderTemplate>新增</HeaderTemplate>
            <ItemTemplate>  
                 <asp:LinkButton ID="lbtnAdd" runat="server" CommandArgument='<%# Bind("IID")%>' CommandName="Add"> 
                    <img alt="Edit" src="resources/images/icons/pencil.png" /> 
                 </asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>修改</HeaderTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="lbtnModify" runat="server" CommandArgument='<%# Bind("IID")%>' CommandName="Modify"> 
                           <img alt="Edit Meta" src="resources/images/icons/hammer_screwdriver.png" /> 
                    </asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField></asp:TemplateField>
            <asp:BoundField DataField="IID" HeaderText="编号" /> 
            <asp:BoundField DataField="Name" HeaderText="品名"  />
            <asp:BoundField DataField="COUNT" HeaderText="图片数"  /> 
        </Columns>
        <PagerSettings FirstPageImageUrl="~/images/function/paging/FirstPage.png" 
            LastPageImageUrl="~/images/function/paging/LastPage.png" 
            Mode="NextPreviousFirstLast" 
            NextPageImageUrl="~/images/function/paging/NextPage.png" PageButtonCount="1" 
            PreviousPageImageUrl="~/images/function/paging/PreviousPage.png" />
            <HeaderStyle  Font-Size="Large" Font-Bold="true" />   
    </asp:GridView>
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
                            <div> <asp:Label ID="lbAttention" runat="server"></asp:Label> </div>
                        </div>
                    </asp:Panel>
                    
                    
                </td>
                <td rowspan="3">
                    <asp:GridView ID="gvDetails" runat="server" AutoGenerateColumns="False"
        DataKeyNames="ImageID" EmptyDataText="没有可显示的数据记录。" AllowPaging="True" 
                        onpageindexchanging="gvDetails_PageIndexChanging" PageSize="1" 
                        onrowcommand="gvDetails_RowCommand" Width="461px">
        <Columns> 
            <asp:TemplateField HeaderText="SmallImg" SortExpression="SmallImg"> 
                <ItemTemplate>
                    <a  href='../<%# Eval("BigImg")%>' class = 'cloud-zoom' rel="position: 'inside' , showTitle: false, adjustX:-4, adjustY:-4">
                        <img alt="" src='../<%# Eval("SmallImg") %>'/>
                    </a>
                </ItemTemplate>
            </asp:TemplateField> 
            <asp:BoundField DataField="ImageID" HeaderText="编号" ReadOnly="True"  SortExpression="ImageID" />  
            <asp:TemplateField>
                <HeaderTemplate>删除</HeaderTemplate>
                <ItemTemplate>  
                 <asp:LinkButton ID="lbtnAdd" runat="server" 
                     CommandArgument='<%# Bind("ImageID")%>' CommandName="shanchu" 
                     onclientclick="return confirm('你确认要删吗?')">  
                    <img alt="Delete" src="resources/images/icons/cross.png" /> 
                 </asp:LinkButton>
            </ItemTemplate>
            </asp:TemplateField>
<%--         <asp:TemplateField>
                <HeaderTemplate>修改</HeaderTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="lbtnModify" runat="server" CommandArgument='<%# Bind("ImageID")%>' CommandName="Modify"> 
                           <img alt="Edit Meta" src="resources/images/icons/hammer_screwdriver.png" /> 
                    </asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField> --%> 

        </Columns>
        <PagerSettings FirstPageImageUrl="~/images/function/paging/FirstPage.png" 
            LastPageImageUrl="~/images/function/paging/LastPage.png" 
            Mode="NextPreviousFirstLast" 
            NextPageImageUrl="~/images/function/paging/NextPage.png" PageButtonCount="1" 
            PreviousPageImageUrl="~/images/function/paging/PreviousPage.png" />
            <HeaderStyle  Font-Size="Large" Font-Bold="true" />
    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
        <br />
        上传图片：　　</td>
                <td >
                    <asp:FileUpload ID="uploadImage" runat="server" />

                </td>
            </tr>
            <tr>
                <td colspan="2">
                    缩略图最大宽度：<asp:TextBox ID="TextBox1" runat="server" Text="240"></asp:TextBox>

                    <br />
                    缩略图最大高度：<asp:TextBox ID="TextBox2" runat="server" Text="320"></asp:TextBox>

                    <br />
                    每行显示字符数：<asp:TextBox ID="TextBox4" runat="server">20</asp:TextBox>
                    <br />
                    缩略图水印文字：<asp:TextBox ID="TextBox3" runat="server" Text="抢购中！"></asp:TextBox>

                </td>
            </tr>
            <tr>
            <td colspan="3">
            <asp:Button ID="btnSubmit" runat="server"  onclick="btnSubmit_Click" Text="提交" />
  
                    
                    </td>
            </tr>
            <tr>
            <td colspan="3">

                </td>
            </tr> 
        </table> 
 