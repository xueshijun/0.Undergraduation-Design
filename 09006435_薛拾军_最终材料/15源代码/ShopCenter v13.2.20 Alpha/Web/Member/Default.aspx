<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Member_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link rel="Stylesheet" href="member.css" />
<link rel="stylesheet" href="jsLib/themes/base/jquery.ui.all.css" />
<link rel="stylesheet" href="jsLib/jquery-smartMenu/css/smartMenu.css" />
<script type="text/javascript" src="jsLib/jquery-1.6.2.js"></script>
<script type="text/javascript" src="jsLib/myLib.js"></script>
<script type="text/javascript" src="jsLib/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="jsLib/jquery.winResize.js"></script>
<script type="text/javascript" src="jsLib/jquery-smartMenu/js/mini/jquery-smartMenu-min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
<a href="#" class="powered_by"> </a>

<div style="margin-left:90px;">
    <iframe src="MyCar.aspx"  name="content" style="border-style: none; border-color: inherit; border-width: 0px; height: 875px; width: 828px;"></iframe>
</div>
<div id="taskBar">
  <div id="leftBtn"><a href="#" class="upBtn"></a></div>
  <div id="rightBtn"><a href="#" class="downBtn"></a> </div>
  <div id="task_lb_wrap">
    <div id="task_lb"></div>
  </div>
</div>
<div id="lr_bar">
  <ul id="default_app">
    <li id="app0"><a href="../Default.aspx" target="_self"><img src="icon/icon1.png" title="商城首页"/></a></li>
    <li id="app1"><a href="MyCar.aspx" target="content"><img src="icon/icon0.png" title="购物车"/></a></li>
    <li id="app2"><a href="MemberInfo.aspx" target="content"><img src="icon/icon2.png" title="个人信息"/></a></li> 
    <li id="app3"><a href="Security.aspx" target="content"><img src="icon/lock.png" title="账户安全"/></a></li>
  </ul>
  <div id="default_tools"> <span id="showZm_btn" title="显示桌面"></span>
  <span id="shizhong_btn" title="时钟"></span>
  <span id="weather_btn" title="天气"></span> 
  <span id="them_btn" title="主题"></span>
  </div>
  <div id="start_block"> <a title="开始" id="start_btn"></a>
    <div id="start_item">
      <ul class="item admin">
        <li><span class="adminImg"></span> Muzi*lie</li>
      </ul>
      <ul class="item">
        <li><span class="sitting_btn"></span>系统设置</li>
        <li><span class="help_btn"></span>使用指南 <b></b></li>
        <li><span class="about_btn"></span>关于我们</li>
        <li><span class="logout_btn"></span>
            <asp:LinkButton ID="lbtnBack" runat="server" onclick="lbtnBack_Click"> 退出系统</asp:LinkButton></li>
      </ul>
    </div>
  </div>
</div>
    </form>
</body>
</html>
