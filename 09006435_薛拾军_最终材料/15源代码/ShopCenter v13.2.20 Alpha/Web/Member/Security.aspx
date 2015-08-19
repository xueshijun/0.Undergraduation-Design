<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Security.aspx.cs" Inherits="Member_Security" Debug="true"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link rel="Stylesheet" href="member.css" />
<link rel="stylesheet" href="jsLib/themes/base/jquery.ui.all.css" />
<link rel="stylesheet" href="jsLib/jquery-smartMenu/css/smartMenu.css" />
 <script type="text/javascript" src="jsLib/jquery-1.3.2.js"></script>
    
    <!----登录用户名检测------->
     <script type="text/javascript">
        function JudgeUserPwd()
         {
             $.ajax({
             type:"GET",
             url:"CheckPwd.aspx",
             dataType:"html",
             data:"userPwd="+$("#txtOldPwd").val(),
             beforeSend:function(XMLHttpRequest)
                 {
                     $("#showResult1").text("查询中...");
                   // Pause(this,100);
                 },
             success:function(msg)
                 {   
                     $("#showResult1").html(msg);
                     $("#showResult1").css("color","red");
                 },
            complete:function(XMLHttpRequest,textStatus)
                 {
                    //隐藏正在查询图片
                 },
           error:function()
                {
                    //错误处理
                }
             });
         }

     </script>
    <!---->
   
     
</head>
<body>
    <form id="form1" runat="server">
    <center>
    
        <table style="width: 36%; height: 91px; margin-top:30%;">
            <tr>
                <td>
                    旧密码</td>
                <td>
                    <asp:TextBox ID="txtOldPwd" runat="server" onchange="JudgeUserPwd();" ></asp:TextBox><div id="showResult1" style="float:right;"></div>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    新密码</td>
                <td>
                    <asp:TextBox ID="txtNewPwd" runat="server" TextMode="Password"></asp:TextBox> 
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    确认新密码</td>
                <td>
                    <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtNewPwd" ControlToValidate="txtConfirm" 
                        ErrorMessage="*新密码输入不一致"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lbUID" runat="server" Visible="False"></asp:Label>
                    <asp:Button ID="btnModify" runat="server" onclick="btnModify_Click" 
                        Text="确认修改" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lbMessage" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </center>
    </form>
</body>
</html>
