<%@LANGUAGE="VBSCRIPT"%>
<!--#include file="Conn/conn.asp" -->
<%
Session("UserName")="無語"
Set rs_user = Server.CreateObject("ADODB.Recordset")
sql_user="SELECT ID,UserName,purview,branch FROM Tab_User WHERE UserName='"&_
Session("UserName")&"'"
rs_user.open sql_user,conn,1,3
%>
<html>
<head>
<title>出現網頁模式交談視窗</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="style.css" rel="stylesheet">
<script language="javascript">
function Mycheck()
{
if (form1.toname.value=="")
{ alert("請輸入收件人姓名！");form1.toname.focus();return;}
if (form1.subject.value=="")
{ alert("請輸入信件主旨！");form1.subject.focus();return;}
if (form1.content.value=="")
{ alert("請輸入信件內容！");form1.content.focus();return;}
form1.submit();}
</script>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
}
.style10 {color: #669999}
.style12 {color: #C60001}
-->
</style></head>

<body>
<table width="557" height="96" border="0" cellpadding="-2" cellspacing="-2"
 background="images/Email/email_01.gif">
  <tr valign="top">
    <td width="800" height="89">&nbsp;</td>
  </tr>
</table>
<table width="557" height="35"  border="0" cellpadding="-2" cellspacing="-2"
 background="images/Email/email_02.gif">
  <tr>
    <td width="6%" height="24" align="center" valign="middle"> &nbsp;
	<img src="images/icon_smile.GIF" width="15" height="15"></td>
    <td width="76%" height="24" align="center"><div align="left"><span class="style10">
	<%=rs_user("UserName")%>&nbsp;您好！&nbsp;&nbsp;所在部門：
	 <%=rs_user("branch")%> </span></div></td>
    <td width="18%" height="24"><div align="center"></div></td>
  </tr>
  <tr>
    <td height="11" colspan="8"></td>
  </tr>
</table>
<table width="556" height="260" border="0" cellpadding="-2" cellspacing="-2">
  <tr>
    <td height="260" valign="middle">
	<form name="form1" method="post" action="email_add_OK.asp">
      <table width="96%" height="234" border="0" align="center" cellpadding="-2" cellspacing="-2">
        <tr>
          <td width="19%" height="30" valign="top">
		  <div align="right" class="style12">收件人：</div></td>
          <td width="81%" valign="top">
		  <input name="toname" type="text" class="Sytle_text" id="toname">
	<script language="javascript">
	function opendialog(){
	var someValue=window.showModalDialog("optUser.asp","","dialogWidth=569px;dialogHeight=426px;status=no;help=no;scrollbars=no")
	document.form1.toname.value=someValue;
	}
	</script>
		  <input name="Submit1" type="button" value="選取使用者" class="Style_button_del"  onClick="opendialog()">
		  </td>
          </tr>
        <tr>
          <td width="19%" height="32" valign="top"><div align="right">
		  <span class="style12">主　題：</span></div></td>
          <td valign="top">
		  <input name="subject" type="text" class="Style_subject" id="subject"></td>
        </tr>
        <tr>
          <td height="134" valign="top"><div align="right" class="style12">內　容：</div></td>
          <td valign="top">
		  <textarea name="content" cols="53" rows="7" id="content"></textarea></td>
          </tr>
        <tr valign="middle">
          <td height="38" colspan="2"><div align="center">
              <input name="Submit" type="button" class="Style_button_del" value="確定傳送"
			   onClick="Mycheck()">
              <input name="Submit2" type="reset" class="Style_button" value="重設">
              <input name="Myclose" type="button" class="Style_button_del" id="Myclose"
			   value="關閉視窗" onClick="JScript:window.close()">
              <input name="branch" type="hidden" id="branch" value="<%=rs_user("branch")%>">
              <input name="fromname" type="hidden" id="fromname" value="<%=rs_user("UserName")%>">
				</div></td>
          </tr>
      </table>
      </form></td>
  </tr>
</table>
</body>
</html>
