<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="Conn/conn.asp"-->
<%
set rs=server.CreateObject("ADODB.RecordSet")
sql="select * from Tab_waichu order by ID desc"
rs.open sql,conn,1,3
%>
<%
if request.QueryString("id")<>"" then
sql="update Tab_waichu set state=1 where id="&request.QueryString("id")
conn.execute(sql)
end if
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>外出登記</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-bottom: 0px;
}
.STYLE1 {font-size: 9pt}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
.style2 {font-size: 9pt; color: #000000; }
-->
</style></head>

<body>
<table width="805" height="516" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="805" height="516" valign="top" background="Images/main.gif"> 
							<table width="762" height="508" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="691" height="57" valign="bottom" class="STYLE1"><img src="Images/isexists.gif" width="16" height="16" />&nbsp;&nbsp;外出登記</td>
        <td width="71" valign="middle"><p>&nbsp;</p>
          <p><a href="#" class="style2" onClick="Javascript:window.open('waichu_add.asp','','width=580,height=350')">外出登記</a></p></td>
      </tr>
	 
      <tr>
        <td height="451" colspan="2" valign="top"><br><br>
			 <%
							If(rs.Eof)Then
								Response.Write("暫無外出訊息!")
							Else
								
							%>
		<table width="724" height="109" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
		  <td height="39" colspan="6" background="../Images/waichubei.gif"><table width="720" height="26" border="0">

<tr>
                <td width="87"><div align="center" class="STYLE1">姓名</div></td>
                <td width="110"><div align="center" class="STYLE1">所屬部門</div></td>
                <td width="136"><div align="center" class="STYLE1">開始時間</div></td>
                <td width="121"><div align="center" class="STYLE1">終止時間</div></td>
                <td width="152"><div align="center" class="STYLE1">外出原因</div></td>
                <td width="88"><div align="center" class="STYLE1">是否銷假</div></td>
                </tr>
            </table>
			</td>
          </tr>
		
<%
		'分頁
	  rs.pagesize=10
	  page1=clng(request("page1"))
	  if page1<1 then page1=1
	  rs.absolutepage=page1
	  for i=1 to rs.pagesize
	  k=rs("content")
	  %>
          <tr>
            <td width="93" height="31"><div align="center" class="STYLE1"><%=rs("name1")%></div></td>
            <td width="111"><div align="center" class="STYLE1"><%=rs("department")%></div></td>
            <td width="142"><div align="center" class="STYLE1"><%=rs("time1")%></div></td>
            <td width="125"><div align="center" class="STYLE1"><%=rs("time2")%></div></td>
            <td width="160" class="STYLE1"><div align="center" class="STYLE1">
			  <% if len(k)>10 then%>
               <a href="#" onClick="Javascript:window.open('waichu_xianxi.asp?ID=<%=rs("ID")%>','','width=456,height=300')"><%=replace(left(k,10)&"....",chr(13),"<br>")%></a>
              <%else%> 
              <a href="#"onClick="Javascript:window.open('waichu_xianxi.asp?ID=<%=rs("ID")%>','','width=456,height=300')"><%=k%></a>
              <%end if %>
			</div></td>
            <td width="93"><div align="center" class="STYLE1">
		<%if rs("state")=1 then%>
        已銷假
        <% End If %>
        <%if rs("state")=0 then%>
        <a href="index.asp?state=1&id=<%=rs("id")%>" onClick="return confirm('確定銷假嗎？')">銷假</a>
        <% End If %>			</div></td>
          </tr>
	<%
	  rs.movenext
	  if rs.eof then exit for 
	  next
	  %>
          <tr>
            <td height="39" colspan="6" background="../Images/waichubei.gif"><table width="719" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><div align="right" class="STYLE1">
                  <% if page1<>1 then%>
              <a href=<%=path1%>?page1=1>第一頁</a> <a href=<%=path1%>?page1=<%=(page1-1)%>> 上一頁</a>
              <%end if %>
              <%if page1<>rs.pagecount then%> 
              <a href=<%=path1%>?page1=<%=(page1+1)%>>下一頁</a> <a href=<%=path1%>?page1=<%=rs.pagecount%> >最後一頁</a>
              <%end if%></div></td>
              </tr>
          </table></td>
          </tr>
        </table>
		<%end if%>
		</td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>