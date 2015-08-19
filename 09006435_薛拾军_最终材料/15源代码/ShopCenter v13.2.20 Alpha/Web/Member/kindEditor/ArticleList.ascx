<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ArticleList.ascx.cs" Inherits="kindEditor_ArticleList" %>
<table> 
    <tr>
        <td colspan="6">
            <asp:GridView ID="gvArticleList" runat="server" AutoGenerateColumns="False"  
                DataKeyNames="ArticleID"  EmptyDataText="没有可显示的数据记录。" AllowPaging="True" 
                PageSize="5" onpageindexchanging="gvArticleList_PageIndexChanging">
                          <Columns>
                          <asp:TemplateField>
                          <HeaderTemplate>
                            <input class="check-all" type="checkbox" />
                          </HeaderTemplate>
                            <ItemTemplate>
                                 <input type="checkbox" />
                                 
                            </ItemTemplate>
                          </asp:TemplateField>
                              <asp:BoundField DataField="ArticleID" HeaderText="编号" ReadOnly="True" 
                                  SortExpression="ArticleID" />
                              <asp:BoundField DataField="ClassName" HeaderText="分类" 
                                  SortExpression="ClassName" />
                              <asp:BoundField DataField="Title" HeaderText="标题" SortExpression="Title" /> 
                              <asp:BoundField DataField="PubDate" HeaderText="发布日期"  SortExpression="PubDate" />
                              <asp:BoundField DataField="ViewTimes" HeaderText="浏览次数" 
                                  SortExpression="ViewTimes" />
                              <asp:BoundField DataField="Author" HeaderText="发布者" 
                                  SortExpression="Author" />
                              <asp:TemplateField HeaderText="管理">
                                <ItemTemplate>
                                       <!-- Icons -->
                                    <img alt="Edit" src="resources/images/icons/pencil.png" /> 
                                    <img alt="Delete" src="resources/images/icons/cross.png" /> 
                                    <img alt="Edit Meta" src="resources/images/icons/hammer_screwdriver.png" /> 
                                </ItemTemplate>
                              </asp:TemplateField>
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
    <tfoot>
        <tr>
            <td colspan="6">
                <div class="bulk-actions align-left">
                    <asp:DropDownList ID="ddlArticleClass" runat="server"  CssClass="medium-input"></asp:DropDownList>  
                    <asp:Button ID="btnArticleClass" runat="server" Text="开始筛选" CssClass="button" 
                        onclick="btnArticleClass_Click" />
                </div>
                  
                    <div class="pagination">
 
                    </div>
                  <!-- End .pagination -->
                  <div class="clear">
                      
                       
                </div>
            </td>
        </tr>
    </tfoot>
</table>