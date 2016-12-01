<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="Conn/conn.asp" -->
<%
'查詢使用者輸入的員工姓名是否存在
Set rs_toname = Server.CreateObject("ADODB.Recordset")
sql_toname = "SELECT UserName FROM Tab_User WHERE UserName = '"&Request.form("toname")&"'"
rs_toname.open sql_toname,conn,1,3
if rs_toname.eof and rs_toname.bof then
	response.Redirect("email_add_fail.asp")'將網頁重向到傳送失敗頁面
end if
%>
<%
'儲存信件訊息
if(request.form("subject") <> "") then parsubject = request.form("subject")
if(request.form("toname") <> "") then partoname = request.form("toname")
if(request.form("fromname") <> "") then parfromname = request.form("fromname")
if(request.form("branch") <> "") then parbranch = request.form("branch")
if(request.form("content") <> "") then parcontent = request.form("content")
Ins_email="INSERT INTO Tab_Email (subject,ToName,FromName,branch,content) VALUES('"&_
 parsubject&"','"&partoname&"','"&parfromname&"','"&parbranch&"','"&parcontent&"' )"
conn.Execute(Ins_email)
%>
<html>
<head>
<title>內定信件_傳送Email成功！</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="style.css" rel="stylesheet">
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
}
.style1 {color: #C60001}
.style3 {
	color: #C60001;
	font-size: 12pt;
	font-weight: bold;
}
-->
</style></head>

<body>
<table width="557" height="401" border="0" cellpadding="-2" cellspacing="-2" background="images/bbs/bbs_add.gif">
  <tr>
    <td width="817" height="349" valign="top"><table width="100%" height="115"  border="0" cellpadding="-2" cellspacing="-2">
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table>      
        <table width="80%" height="147"  border="0" align="center" cellpadding="-2" cellspacing="-2">
          <tr>
            <td height="83"><div align="center" class="style1"></div>              
            <div align="center"><span class="style3">傳送Email成功！</span></div></td>
          </tr>
          <tr>
            <td height="25" valign="top"><div align="center" class="style1"></div></td>
          </tr>
          <tr>
            <td><div align="center">
                <input name="Button" type="button" class="Style_button" value="傳回"
				 onClick="Javascript:window.location='index.asp'">
            </div></td>
          </tr>
        </table>
	</td>
  </tr>
</table>
</body>
</html>