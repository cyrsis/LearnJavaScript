<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<%
	Dim Conn
	Set Conn = Server.CreateObject("ADODB.Connection")
	sql="Driver={Microsoft Access Driver (*.mdb)};DBQ= "&Server.mappath("Database/db_schoolcomputer.mdb")
    conn.open(sql)
%>
<%
session("wz")="班級管理"
Set rs=Server.CreateObject("ADODB.Recordset")
sql="select * from tb_class"
rs.open sql,conn,1,3
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>新城電腦教育訓練學校-----背景管理系統</title>
<style type="text/css">
<!--
.style4 {font-size: 9pt;
	color: #0c5c95;
}
-->
</style>
</head>

<body>
<!--#include file="top.asp"-->
<table width="833" height="381" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="10" height="368" valign="top" background="images/left0.gif"><p>&nbsp;</p>    </td>
    <td width="819" valign="top"><p>&nbsp;</p>
      <table width="718" height="39" border="1" align="center" cellpadding="0" cellspacing="0" bordercolordark="#FFFFFF" bordercolorlight="#B1C7EC">
        <tr>
          <td width="54" height="17"><div align="center" class="style4">班級編號</div></td>
          <td width="197"><div align="center" class="style4">班級名稱</div></td>
          <td width="96"><div align="center" class="style4">班主任</div></td>
          <td width="175"><div align="center"><span class="style4">班級建立時間</span></div></td>
          <td width="146"><div align="center" class="style4">所屬專業</div></td>
          <td width="36"><div align="center" class="style4">移除</div></td>
        </tr>
        <%
		if rs.bof and rs.eof then
		response.Write("暫無訊息！！！")
		else
		'分頁
		  rs.pagesize=10
		  page=clng(request("page"))
		  if page<1 then page=1
		  rs.absolutepage=page
		  for i=1 to rs.pagesize
		  %>
        <tr>
          <td height="20" class="style4"><div align="center"><%=rs("class_id")%>&nbsp;</div></td>
          <td height="20"><div align="center" class="style4"><%=rs("class_name")%>&nbsp;</div></td>
          <td height="20"><div align="center" class="style4"><%=rs("class_director")%>&nbsp;</div></td>
          <td height="20"><div align="center"><span class="style4"><%=rs("class_data")%></span>&nbsp;</div></td>
          <td height="20"class="style4"><div align="center"><%=rs("class_specialty")%>&nbsp;</div></td>
          <td height="20"><div align="center"> <A HREF="#" onClick="JScript:window.open('schoolbook_del.asp?ID=<%=rs("class_id")
			   %>','')"><img src="images/del.gif" width="16" height="16" border="0"></a> </div></td>
        </tr>
        <%
	   rs.movenext
	   if rs.eof then exit for
	   next
	   end if
	   %>
      </table>
      <table width="718" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="718"><div align="right" class="style4">
              <% if page<>1 then%>
              <a href=<%=path%>?page=1>第一頁</a> <a href=<%=path%>?page=<%=(page-1)%>> 上一頁</a>
              <%end if %>
              <%if page<>rs.pagecount then%>
              <a href=<%=path%>?page=<%=(page+1)%>>下一頁</a> <a href=<%=path%>?page=<%=rs.pagecount%> >最後一頁</a>
              <%end if%>
          </div></td>
        </tr>
      </table>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
    <p></p></td>
    <td width="10" valign="top" background="images/right0.gif">&nbsp;</td>
  </tr>
  
  <tr>
    <td width="10" height="13" valign="top" background="images/left.gif">&nbsp;</td>
    <td width="819" height="13" valign="top" background="images/99.gif">&nbsp;</td>
    <td width="10" height="13" valign="top" background="images/right.gif">&nbsp;</td>
  </tr>
</table>
<table width="833" height="14" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td><!--#include file="copyright.asp"--></td>
        </tr>
</table>
</body>
</html>
