<%@ Control Language="C#" AutoEventWireup="true" CodeFile="itemsAdd.ascx.cs" Inherits="UserControl_itemsAdd" %>
 
<link rel="stylesheet" href="../css/noticification.css" type="text/css" media="screen" />
<!--                       Javascripts                       -->
<!-- jQuery -->
<script type="text/javascript" src="resources/scripts/jquery-1.3.2.min.js"></script>
<!-- jQuery Configuration -->
<script type="text/javascript" src="resources/scripts/simpla.jquery.configuration.js"></script>
  
    <table style="width:100%;">
        <tr>
            <td>
                类别</td>
            <td>
                <asp:DropDownList ID="ddlProductID" runat="server"   DataTextField="Name" DataValueField="PID">
                </asp:DropDownList>
                </td>
            <td >
                &nbsp;</td>
            <td >
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                品牌</td>
            <td>
                <asp:DropDownList ID="ddlBrandID" runat="server" DataTextField="BrandName" DataValueField="BID">
                </asp:DropDownList>
                </td>
            <td >
                &nbsp;</td>
            <td >
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                商品名称</td>
            <td>
    <asp:TextBox ID="txtName" runat="server" ></asp:TextBox>
            </td>
            <td >
                VIP价</td>
            <td >
    <asp:TextBox ID="txtVipPrice" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                价格</td>
            <td>
    <asp:TextBox ID="txtAgoraPrice" runat="server" ></asp:TextBox>
                <asp:Button ID="btnCopy" runat="server"  CssClass="button" Text="一键复制价格" 
                    onclick="btnCopy_Click" />
            </td>
            <td >
                秒杀价</td>
            <td >
    <asp:TextBox ID="txtSeckillPrice" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                会员价</td>
            <td>
    <asp:TextBox ID="txtMemberPrice" runat="server" ></asp:TextBox>
            </td>
            <td >
                折扣</td>
            <td >
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                产地</td>
            <td>
    <asp:TextBox ID="txtArea" runat="server" ></asp:TextBox>
            </td>
            <td >
                &nbsp;</td>
            <td >
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                商品详情</td>
            <td colspan="3">

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
            <td>
                &nbsp;</td>
            <td>
                天：<asp:TextBox ID="txtDays" runat="server" Text="2"></asp:TextBox><br />
                时：<asp:TextBox ID="txtHours" runat="server" Text="2" ></asp:TextBox><br />
                分：<asp:TextBox ID="txtMinutes" runat="server" Text="2"></asp:TextBox><br />
                秒：<asp:TextBox ID="txtSeconds" runat="server" Text="2"></asp:TextBox>
                <br />
            </td>
            <td >
                &nbsp;</td>
            <td >
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
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
                <asp:Button ID="btnUpload" runat="server" onclick="btnUpload_Click" Text="提交" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td >
                &nbsp;</td>
            <td >
                &nbsp;</td>
        </tr>
    </table>
     