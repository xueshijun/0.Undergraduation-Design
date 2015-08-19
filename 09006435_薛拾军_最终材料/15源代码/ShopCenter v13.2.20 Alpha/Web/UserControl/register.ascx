<%@ Control Language="C#" AutoEventWireup="true" CodeFile="register.ascx.cs" Inherits="UserControl_register" %>
 

    <!--                       CSS                       -->
<!-- Reset Stylesheet -->
<link rel="stylesheet" href="Admins/resources/css/reset.css" type="text/css" media="screen" />
<!-- Main Stylesheet -->
<link rel="stylesheet" href="Admins/resources/css/mystyle.css" type="text/css" media="screen" />
<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
<link rel="stylesheet" href="Admins/resources/css/invalid.css" type="text/css" media="screen" />
<!--                       Javascripts                       -->
<!-- jQuery -->
<script type="text/javascript" src="Admins/resources/scripts/jquery-1.3.2.min.js"></script>
<!-- jQuery Configuration -->
<script type="text/javascript" src="Admins/resources/scripts/simpla.jquery.configuration.js"></script>
<!-- Facebox jQuery Plugin -->
<script type="text/javascript" src="Admins/resources/scripts/facebox.js"></script>
<!-- jQuery WYSIWYG Plugin -->
<script type="text/javascript" src="Admins/resources/scripts/jquery.wysiwyg.js"></script>
<!-- jQuery Datepicker Plugin -->
<script type="text/javascript" src="Admins/resources/scripts/jquery.datePicker.js"></script>
<script type="text/javascript" src="Admins/resources/scripts/jquery.date.js"></script>

<style >
    .Login_ErroRound{ color:Red;}
    .style1
    {
        width: 505px;
    }
</style>
    <script language="javascript" type="text/javascript">
    var xmlHttp;
    function createXMLHttpRequest()
    {
        if(window.ActiveXObject)
        {
            xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        else if(window.XMLHttpRequest)
        {
            xmlHttp = new XMLHttpRequest();
        }
    }
function AjaxCheckName(){

createXMLHttpRequest();
var getName=document.getElementById("UserName").value;
var url="CheckNameHandler.ashx?userName="+getName;
xmlHttp.open("POST",url,true);
xmlHttp.onreadystatechange=resultCheckName;
xmlHttp.send(null);
}



function resultCheckName(){ 
    var txtRound=document.getElementById("RoundName");
    if(xmlHttp.readystate==4){ 
        if(xmlHttp.status==200){ 
            var txtGetResponse=xmlHttp.responseText; 
            if(txtGetResponse=="0"){ 
              txtRound.className="Login_ErroRound";
              txtRound.innerHTML = "用户名格式正确"; 
            }
            else if(txtGetResponse=="2"){

              txtRound.className="Login_ErroRound";
              txtRound.innerHTML="已被注册"; 
            }
            else if(txtGetResponse=="3"){ 
             txtRound.className="Login_RightRound";
             txtRound.innerHTML="该用户名可以使用"; 
            }
        } 
    } 
}
    function CheckName(){
    
    var txtName=document.getElementById("UserName");
    var txtRound=document.getElementById("RoundName");
    var txtReg=/^[\w]{6,10}$/;
    var IsBool=txtReg.test(txtName.value);
    if(IsBool){
    
      txtRound.className="Login_RightRound";
      txtRound.innerHTML="*";

    
    }
    else{
    
        txtRound.className="Login_ErroRound";
        txtRound.innerHTML="错误";
    
    }
    }
    function CheckPassOne(){
    
    var txtPassOne=document.getElementById("UserPassOne");
    var txtRound=document.getElementById("RoundPassOne");
    var txtReg=/^[A-Za-z0-9_]{6,15}$/;
    var IsBool=txtReg.test(txtPassOne.value);
    if(IsBool){
    
      txtRound.className="Login_RightRound";
      txtRound.innerHTML="*";

    
    }
    else{
    
        txtRound.className="Login_ErroRound";
        txtRound.innerHTML="错误";

    
    }
    }
    function CheckPassTwo(){
    
    var txtPassOne=document.getElementById("UserPassOne");
    var txtPassTwo=document.getElementById("UserPassTwo");
    var txtRound=document.getElementById("RoundPassTwo");
    if(txtPassTwo.value==txtPassOne.value){
    
      txtRound.className="Login_RightRound";
      txtRound.innerHTML="*";

    
    }
    else{
    
        txtRound.className="Login_ErroRound";
        txtRound.innerHTML="错误";

    
    }
    }
    function CheckEmail(){
    
    var txtEmail=document.getElementById("UserEmail");
    var txtRound=document.getElementById("RoundEmail");
    var txtReg=/^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
    var IsBool=txtReg.test(txtEmail.value);
    if(IsBool){
    
      txtRound.className="Login_RightRound";
      txtRound.innerHTML="*";

    
    }
    else{
    
        txtRound.className="Login_ErroRound";
        txtRound.innerHTML="错误";

    
    }
    }
    function CheckPhone(){
    
    var txtPhone=document.getElementById("UserPhone");
    var txtRound=document.getElementById("RoundPhone");
    var txtReg=/^\d{3}-\d{8}$/;
    var IsBool=txtReg.test(txtPhone.value);
    if(txtPhone.value.length>0)
    {
    if(IsBool){
    
      txtRound.style.display="block";
      txtRound.className="Login_RightRound";
      txtRound.innerHTML="*";

    
    }
    else{
    
        txtRound.style.display="block";
        txtRound.className="Login_ErroRound";
        txtRound.innerHTML="错误";

    
    }
    }
    else{
    
          txtRound.style.display="none";
    
    }
    }
    function CheckPhonetele(){
    
    var txtPhone=document.getElementById("UserPhonetele");
    var txtRound=document.getElementById("RoundPhonetele");
    var txtReg=/^13[\d]{9}$/;
    var IsBool=txtReg.test(txtPhone.value);
    if(IsBool){
    
      txtRound.className="Login_RightRound";
      txtRound.innerHTML="*";

    
    }
    else{
    
        txtRound.className="Login_ErroRound";
        txtRound.innerHTML="错误";

    
    }
    }
    function CheckAdress(){
    
    var txtAdress=document.getElementById("UserAdress");
    var txtRound=document.getElementById("RoundAdress");
    var txtReg=/^[\u4e00-\u9fa5]{5,}[\u4e00-\u9fa5A-Za-z0-9]{5,25}$/;
    var IsBool=txtReg.test(txtAdress.value);
    if(IsBool){
    
      txtRound.className="Login_RightRound";
      txtRound.innerHTML="*";
    
    }
    else{
       
        txtRound.className="Login_ErroRound";
        txtRound.innerHTML="错误";

    }
    }
    </script>
<div id="LoginCon">
  <table  border="1" cellpadding="1" cellspacing="1" bordercolor="#E1E1E1"  >
    <tr>
      <td  align="right">用户名：</td>
      <td class="style1">
          <asp:TextBox ID="UserName" runat="server" CssClass="text-input middle-input" onkeyup="CheckName()"></asp:TextBox>      
          <span class="Login_ErroRound" id="RoundName"> </span>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
              ControlToValidate="UserName" ErrorMessage="必填" Visible="False"></asp:RequiredFieldValidator>
       </td>
       <td><input id="CheckExist" type="button" value="检查该用户是否存在" runat="server" onclick="AjaxCheckName()" />
           <br />
          用户名只能有6-10位的数字、字母或下划线组成 
       </td>
    </tr>
	<tr>
      <td  align="right">密 码：</td>
      <td class="style1">
          <asp:TextBox ID="UserPassOne" runat="server" CssClass="text-input middle-input"  onkeyup="CheckPassOne()"></asp:TextBox>
          <span class="Login_ErroRound" id="RoundPassOne"> </span>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
              ControlToValidate="UserPassOne" ErrorMessage="必填" Visible="False"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
              ErrorMessage="格式不正确！" ControlToValidate="UserPassOne" 
              ValidationExpression="[A-Za-z0-9_]{6,15}" ForeColor="Red"></asp:RegularExpressionValidator>
      </td>
      <td class="Login_span">密码只能有6-15位的数字、字母或下划线组成</td>
    </tr>
	<tr>
      <td  align="right">确认密码：</td>
      <td class="style1">
          <asp:TextBox ID="UserPassTwo" runat="server" CssClass="text-input middle-input"  onkeyup="CheckPassTwo()"></asp:TextBox>
          <span class="Login_ErroRound" id="RoundPassTwo"> </span>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
              ControlToValidate="UserPassTwo" ErrorMessage="必填" Visible="False"></asp:RequiredFieldValidator>
          <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="UserPassOne"
              ControlToValidate="UserPassTwo" ErrorMessage="两次输入不一致" ForeColor="Red"></asp:CompareValidator>
      </td>
      <td  class="Login_span">两次输入的密码必须一致</td>
    </tr>
	<tr>
      <td  align="right">邮 箱：</td>
      <td class="style1">
          <asp:TextBox ID="UserEmail" runat="server" CssClass="text-input middle-input"  onkeyup="CheckEmail()" ></asp:TextBox>
          <span class="Login_ErroRound" id="RoundEmail"> </span>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="必填"
              Visible="False" ControlToValidate="UserEmail"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="格式不正确！"
              ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
              ControlToValidate="UserEmail" ForeColor="Red"></asp:RegularExpressionValidator>
      </td>
      <td class="Login_span">请输入正确的邮箱</td>
    </tr>
	<tr>
      <td  align="right">电话号码：</td>
      <td class="style1">
          <asp:TextBox ID="UserPhone" runat="server" CssClass="text-input middle-input"  onkeyup="CheckPhone()" ></asp:TextBox>
          <span class="Login_ErroRound" id="RoundPhone" style="display:none"> </span>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                ErrorMessage="格式不正确！" ValidationExpression="\d{3}-\d{8}" 
              ControlToValidate="UserPhone" ForeColor="Red"></asp:RegularExpressionValidator>     
     </td>
      <td  class="Login_span">请输入正确号码方便联系，例如(010-89899888)
         
      </td>
    </tr>
	<tr>
      <td  align="right">手机号码：</td>
      <td class="style1">
          <asp:TextBox ID="UserPhonetele" runat="server" CssClass="text-input middle-input"  onkeyup="CheckPhonetele()"></asp:TextBox>
          <span class="Login_ErroRound" id="RoundPhonetele"> </span>

          <asp:RequiredFieldValidator ID="RequiredFieldValidator6"
              runat="server" ControlToValidate="UserPhonetele" ErrorMessage="必填" Visible="False"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="格式不正确！"
              ValidationExpression="13[\d]{9}" ControlToValidate="UserPhonetele" 
              ForeColor="Red"></asp:RegularExpressionValidator>
      </td>
      <td  class="Login_span">请输入正确号码方便联系，例如(13307889898)</td>
    </tr>
    	<tr>
      <td  align="right">详解地址：</td>
      <td class="style1"><asp:TextBox ID="UserAdress" runat="server" CssClass="text-input large-input"  onkeyup="CheckAdress()"></asp:TextBox>
        <span class="Login_ErroRound" id="RoundAdress" > </span>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7"
              runat="server" ControlToValidate="UserAdress" ErrorMessage="必填" Visible="False"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
              ErrorMessage="格式不正确！" 
              ValidationExpression="[\u4e00-\u9fa5]{5,}[\u4e00-\u9fa5A-Za-z0-9]{5,25}" 
              ControlToValidate="UserAdress" ForeColor="Red"></asp:RegularExpressionValidator>
      </td>
      <td  class="Login_span">
          请输入您正确的收货地址,只能是10-30个字<br />
          (例如：北京市海定区丁11号求知楼208室)</td>
    </tr>
	
		<tr><td></td><td class="style1"></td></tr>
		<tr>
      <td height="50" colspan="3" align="center">
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

          <asp:Button ID="LoginButton" runat="server" Text="用户注册"  CssClass="button" OnClick="LoginButton_Click" />
          <asp:Button ID="EntryButton" runat="server" Text="用户登录"  CssClass="button"  OnClick="EntryButton_Click" CausesValidation="False" />&nbsp;</td>
      </tr>	
  </table>
</div>