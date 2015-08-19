<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ItemsAddForm.aspx.cs" Inherits="Admins_ItemsAddForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <%--
<link rel="stylesheet" href="../css/noticification.css" type="text/css" media="screen" />
<!--                       Javascripts                       -->
<!-- jQuery -->
<script type="text/javascript" src="resources/scripts/jquery-1.3.2.min.js"></script>
<!-- jQuery Configuration -->
<script type="text/javascript" src="resources/scripts/simpla.jquery.configuration.js"></script>
  --%>

  
    <!--                       CSS                       -->
<!-- Reset Stylesheet -->
<link rel="stylesheet" href="resources/css/reset.css" type="text/css" media="screen" />
<!-- Main Stylesheet -->
<link rel="stylesheet" href="resources/css/mystyle.css" type="text/css" media="screen" />
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
</head>
<body>
    <form id="form1" runat="server">
   
    <table style="width:100%;">
        <tr>
            <td width="25%">
                类别</td>
            <td width="25%">
                <asp:DropDownList ID="ddlProductID" runat="server"   DataTextField="Name" DataValueField="PID">
                </asp:DropDownList>
                </td>
            <td width="25%" >
                &nbsp;</td>
            <td width="25%" >
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                品牌</td>
            <td width="25%">
                <asp:DropDownList ID="ddlBrandID" runat="server" DataTextField="BrandName" DataValueField="BID">
                </asp:DropDownList>
                </td>
            <td width="25%" >
                &nbsp;</td>
            <td width="25%" >
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%"> 商品名称</td>
            <td width="25%"> <asp:TextBox ID="txtName" runat="server" CssClass="text-input small-input"></asp:TextBox>
            </td>
            <td width="25%" >   VIP价</td>
            <td width="25%" > <asp:TextBox ID="txtVipPrice" runat="server" CssClass="text-input small-input"></asp:TextBox>  </td>
        </tr>
        <tr>
            <td width="25%"> 价格</td>
            <td width="25%">  <asp:TextBox ID="txtAgoraPrice" runat="server" CssClass="text-input small-input" ></asp:TextBox>
                <asp:Button ID="btnCopy" runat="server"  CssClass="button" Text="一键复制价格"   onclick="btnCopy_Click" />
            </td>
            <td width="25%" >  秒杀价</td>
            <td width="25%" > <asp:TextBox ID="txtSeckillPrice" runat="server" CssClass="text-input small-input" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="25%"> 会员价</td>
            <td width="25%">  <asp:TextBox ID="txtMemberPrice" runat="server" CssClass="text-input small-input" ></asp:TextBox> </td>
            <td width="25%" > 折扣</td>
            <td width="25%" > </td>
        </tr>
        <tr>
            <td width="25%"> 产地</td>
            <td width="25%"> <asp:TextBox ID="txtArea" runat="server" CssClass="text-input small-input" ></asp:TextBox>  </td>
            <td width="25%" > </td>
            <td width="25%" > </td>
        </tr>
        <tr>
            <td width="25%">
                商品详情</td>
            <td width="25%" colspan="3">

                <script type="text/javascript" charset="utf-8" src="../kindEditor/kindeditor.js"></script>
                <script type="text/javascript">
                    KE.show({
                        id: 'Textarea1',
                        imageUploadJson: '../../upload_json.ashx',
                        fileManagerJson: '../../file_manager_json.ashx',
                        afterCreate: function (id) {
                            KE.event.ctrl(document, 13, function () {
                                KE.util.setData(id);
                                document.forms['form1'].submit();
                            });
                            KE.event.ctrl(KE.g[id].iframeDoc, 13, function () {
                                KE.util.setData(id);
                                document.forms['form1'].submit();
                            });
                        }
                    });
             </script>

                <textarea id="Textarea1" runat="server" cols="20" name="S1" rows="1" 
                    style="width:100%;height:200px; visibility:hidden; margin-bottom: 0px;"></textarea></td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td width="25%">
                天：<asp:TextBox ID="txtDays" runat="server" CssClass="text-input small-input" Text="2"></asp:TextBox><br />
                时：<asp:TextBox ID="txtHours" runat="server" CssClass="text-input small-input" Text="2" ></asp:TextBox><br />
                分：<asp:TextBox ID="txtMinutes" runat="server" CssClass="text-input small-input" Text="2"></asp:TextBox><br />
                秒：<asp:TextBox ID="txtSeconds" runat="server" CssClass="text-input small-input" Text="2"></asp:TextBox>
                <br />
            </td>
            <td width="25%" >
                &nbsp;</td>
            <td width="25%" >
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%" colspan="4">
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
                            <div> <asp:Label ID="lbAttention" runat="server"></asp:Label> </div>
                        </div>
                    </asp:Panel>
    <!-- End Notifications -->
                <asp:Button ID="btnUpload" runat="server" onclick="btnUpload_Click" Text="提交" CssClass="button" />
            </td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
            <td width="25%" >
                &nbsp;</td>
            <td width="25%" >
                &nbsp;</td>
        </tr>
    </table>
   

    </form>
</body>
</html>
