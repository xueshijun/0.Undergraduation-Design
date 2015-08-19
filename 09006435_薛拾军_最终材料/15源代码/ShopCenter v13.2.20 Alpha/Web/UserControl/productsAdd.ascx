<%@ Control Language="C#" AutoEventWireup="true" CodeFile="productsAdd.ascx.cs" Inherits="UserControl_productsAdd" %>
<div id="tab2" class="tab-content default-tab">
    <fieldset>
            <!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->
                 <p>
              <label>名称<asp:Label ID="lbPID" runat="server"></asp:Label>
                </label>
                &nbsp;<asp:TextBox ID="txtName" runat="server" CssClass="text-input small-input" ></asp:TextBox> 
              <!-- Classes for input-notification: success, error, information, attention -->
              <br />
              <small>A small description of the field</small> </p>
                <p>
              <label>所属类别</label>
                    <asp:DropDownList ID="ddlChaCategory" runat="server">
                    </asp:DropDownList>

                 <br />
              <small>修改所属类别</small>
              </p>
            <p>
              <label>描述</label>
               <asp:TextBox ID="txtDescription" runat="server" CssClass="text-input medium-input datepicker" ></asp:TextBox> 
            </p> 
                    
              
            
                <!-- Start Notifications -->

            <asp:Panel ID="panelAttention" runat="server" Visible="false">
                <div class="notification attention png_bg">
                    <a class="close" href="#">
                <img alt="close" src="resources/images/icons/cross_grey_small.png" title="Close this notification" />
                    </a>
                    <div>
                        <asp:Label ID="lbAttention" runat="server"></asp:Label>
                    </div>
                </div>
        </asp:Panel>
        <asp:Panel ID="paneInfo" runat="server" Visible="false">
            <div class="notification information png_bg">
                <a class="close" href="#"> <img alt="close" src="resources/images/icons/cross_grey_small.png"  title="Close this notification" />
                </a>
                <div>
                    <asp:Label ID="lbInfo" runat="server"></asp:Label>
                </div>
            </div>
        </asp:Panel>
        <asp:Panel ID="panelSuccess" runat="server" Visible="false">
            <div class="notification success png_bg">
                <a class="close" href="#">
                    <img alt="close" src="resources/images/icons/cross_grey_small.png" 
                        title="Close this notification" /></a>
                <div>
                    <asp:Label ID="lbSuccess" runat="server"></asp:Label>
                </div>
            </div>
        </asp:Panel>
        <asp:Panel ID="panelError" runat="server" Visible="false">
            <div class="notification error png_bg">
                <a class="close" href="#">
                <img alt="close" src="resources/images/icons/cross_grey_small.png" 
                    title="Close this notification" /></a>
                <div>
                    <asp:Label ID="lbError" runat="server"></asp:Label>
                </div>
            </div>
        </asp:Panel>
            <!-- End Notifications -->
            <p>
                <asp:LinkButton ID="lbtnAdd" runat="server" CssClass="button" 
                    onclick="lbtnAdd_Click">添加</asp:LinkButton>
        </p>
    </fieldset>
    <div class="clear">
    </div>
            <!-- End .clear --> 
        </div>

