﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="indexscroll.ascx.cs" Inherits="UserControl_indexscroll" %>
<script type="text/javascript" src="js/index_scroll.js"></script> 
  
<style type="text/css">
body{text-align:center;}
td{font-size:12px}
.pdboder{BORDER-LEFT: #ffffff 1px solid}
.title{
word-break:break-all;
word-wrap:break-word;
layout-flow:vertical-ideographic;
color:#ffffff;
font-size:12px;
cursor:hand; 
font-weight:bold; 
text-align:center;TEXT-DECORATION: none}
.title A:link {COLOR: #ffffff; TEXT-DECORATION: none}
.title A:visited {COLOR: #ffffff; TEXT-DECORATION: none}
.title A:hover {COLOR: #ffffff; TEXT-DECORATION: none}
.title A:active {COLOR: #ffffff; TEXT-DECORATION: none}
.title1 {word-break:break-all;
word-wrap:break-word;
layout-flow:vertical-ideographic;
color:#ffffff;
font-size:12px;
cursor:hand; 
font-weight:bold; 
text-align:center;TEXT-DECORATION: none}
</style>
	<div class="index_scroll ">
<%--	 <div class="LeftBotton">&lt;
            <img alt="" src="images/indexscroll/Timages/indexscroll/function/prev_photo.png" />
        </div>
		<div class="pcont" id="ISL_Cont_1">
			<div class="ScrCont">
				<div id="List1_1">
				  <asp:Repeater  ID="ddlIndexScrolling" runat="server">
                        <ItemTemplate> 
				            <a href='<%#Eval("Target") %>' target="_blank" title="">
				                <img src='<%#Eval("Img") %>' width="165" height="120" alt='<%#Eval("Alt") %>'  border="0" />
				            </a>  
			            </ItemTemplate>
                    </asp:Repeater>  
				</div>
				<div id="List2_1"></div>
				</div>
		</div>
	    <div class="RightBotton">    
            <img alt="" src="images/indexscroll/Timages/indexscroll/function/next_photo.png" />
        </div>
--%>
 
    <table width="780px" border="0" cellpadding="0" cellspacing="0">
        <tr>
    <td>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
      <tr>
        <td width="20"><div id=divhl01>
            <div><a href="#" target="_blank"><img src="images/indexscroll/ad-01.jpg" width="600" height="190" border="0"></a></div>
        </div></td>
        <td width="20" onMouseOver="content_mouse(1)" valign="top" bgcolor="#FE8E0A" class="pdboder">
        <table width="100%" border=0 cellpadding=0 cellspacing=0>
            <tr>
              <td width="100%"height="23" align="center"><img src="images/indexscroll/arrow.gif" width="12" height="12"></td>
            </tr>
            <tr>
              <td align=center><a href="#" target="_blank" class="title1">壹</a></td>
            </tr>
        </table></td>
        <td><div id=divhl02 style="display:none">
            <div><a href="#" target="_blank"><img src="images/indexscroll/ad-02.jpg" width="600" height="190" border="0"></a></div>
        </div></td>
        <td width="20" onMouseOver="content_mouse(2)" valign="top" bgcolor="#FA5886" class="pdboder">
        <table  width="100%" border=0 cellpadding=0 cellspacing=0>
            <tr>
              <td width="100%"height="23" align="center"><img src="images/indexscroll/arrow.gif" width="12" height="12"></td>
            </tr>
            <tr>
              <td align=center><a href="#" target="_blank" class="title1">貮</a></td>
            </tr>
        </table></td>
        <td><div id=divhl03 style="display:none">
            <div><a href="#" target="_blank"><img src="images/indexscroll/ad-03.jpg" width="600" height="190" border="0"></a></div>
        </div></td>
        <td width="20" valign="top" onMouseOver="content_mouse(3)" bgcolor="#ED3FBA" class="pdboder">
        <table  width="100%" border=0 cellpadding=0 cellspacing=0>
            <tr>
              <td width="100%"height="23" align="center"><img src="images/indexscroll/arrow.gif" width="12" height="12"></td>
            </tr>
            <tr>
              <td align=center><a href="#" target="_blank" class="title1">叁</a></td>
            </tr>
        </table></td>
        <td><div id=divhl04 style="display:none">
            <div><a href="#" target="_blank"><img src="images/indexscroll/ad-04.jpg" width="600" height="190" border="0"></a></div>
        </div></td>
        <td width="20" valign="top" onMouseOver="content_mouse(4)" bgcolor="#916DCB" class="pdboder">
        <table  width="100%" border=0 cellpadding=0 cellspacing=0>
            <tr>
              <td width="100%"height="23" align="center"><img src="images/indexscroll/arrow.gif" width="12" height="12"></td>
            </tr>
            <tr>
              <td align=center><a href="#" target="_blank" class="title1">肆</a></td>
            </tr>
        </table></td>
        <td><div id=divhl05 style="display:none">
            <div><a href="#" target="_blank"><img src="images/indexscroll/ad-05.jpg" width="600" height="190" border="0"></a></div>
        </div></td>
        <td width="20" align=center valign="top" onMouseOver="content_mouse(5)" bgcolor="#4FB9E1" class="pdboder">
        <table  width="100%" border=0 cellpadding=0 cellspacing=0>
            <tr>
              <td width="100%"height="23" align="center"><img src="images/indexscroll/arrow.gif" width="12" height="12"></td>
            </tr>
            <tr>
              <td align=center><a href="#" target="_blank" class="title1">伍</a></td>
            </tr>
        </table></td>
        <td><div id=divhl06 style="display:none">
            <div><a href="#" target="_blank"><img src="images/indexscroll/ad-06.jpg" width="600" height="190" border="0"></a></div>
        </div></td>
        <td width="20" align=center valign="top" onMouseOver="content_mouse(6)" bgcolor="#CCCC66" class="pdboder">
        <table  width="100%" border=0 cellpadding=0 cellspacing=0>
            <tr>
              <td width="100%"height="23" align="center"><img src="images/indexscroll/arrow.gif" width="12" height="12"></td>
            </tr>
            <tr>
              <td align=center><a href="#" target="_blank" class="title1">陆</a></td>
            </tr>
        </table></td>
        <td><div id=divhl07 style="display:none">
            <div><a href="#" target="_blank"><img src="images/indexscroll/ad-07.jpg" width="600" height="190" border="0"></a></div>
        </div></td>
        <td width="20" align=center valign="top" onMouseOver="content_mouse(7)" bgcolor="#FF99CC" class="pdboder">
        <table  width="100%" border=0 cellpadding=0 cellspacing=0>
            <tr>
              <td width="100%"height="23" align="center"><img src="images/indexscroll/arrow.gif" width="12" height="12"></td>
            </tr>
            <tr>
              <td align=center><a href="#" target="_blank" class="title1">柒</a></td>
            </tr>
        </table></td>
        <td><div id=divhl08 style="display:none">
            <div><a href="#" target="_blank"><img src="images/indexscroll/ad-08.jpg" width="600" height="190" border="0"></a></div>
        </div></td>
        <td width="20" align=center valign="top" onMouseOver="content_mouse(8)" bgcolor="#99CC33" class="pdboder">
        <table width="100%"border=0 cellpadding=0 cellspacing=0>
            <tr>
              <td width="100%"height="23" align="center"><img src="images/indexscroll/arrow.gif" width="12" height="12"></td>
            </tr>
            <tr>
              <td align=center><a href="#" target="_blank" class="title1">捌</a></td>
            </tr>
        </table></td>
      </tr>
    </table>
    <script language=JavaScript src="js/scrollad.js"></script></td>
  </tr>
    </table>  
</div>
         
					
					