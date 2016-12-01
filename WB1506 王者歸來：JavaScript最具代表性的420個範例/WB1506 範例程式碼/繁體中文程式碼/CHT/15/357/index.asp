<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="Conn/conn.asp"-->
<%
session("wz")="通信管理"
%>
<%
Set rs=Server.CreateObject("ADODB.RecordSet")
sql="select m.id,m.name1,d.c,time1 from tb_tongxun m left join (select name1,count(*) as c from tb_tongxunadd group by name1) d on m.id=d.name1 order by time1 desc"
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
.style3 {color: #FF0000}
.style7 {color: #000000; font-size: 9pt; }
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
-->
</style>
</head>

<body>
<!--#include file="top.asp"-->
<table width="833" height="381" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="10" height="368" valign="top" background="images/left0.gif"><p>&nbsp;</p></td>
    <td width="812" valign="top"><p>&nbsp;</p>
      <table width="674" height="214" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="730" height="214"><table width="101%" height="75%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td height="13" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="36" valign="top"><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="39%" height="16" background="../Images/waichubei.gif">&nbsp;</td>
                    <td width="38%" background="../Images/waichubei.gif"><div align="right"><img src="images/biao03.gif" width="16" height="16" /></div></td>
                    <td width="23%" background="../Images/waichubei.gif" class="STYLE21">
                        <a href="#" class="style4" onclick="JScript:window.open('tongxun_add.asp','','width=300,height=230')">&nbsp;加入班級訊息</a>                       </td>
                  </tr>
              </table></td>
            </tr>
            <tr>
              <td valign="top"><%
		If(rs.Eof)Then
			Response.Write("暫無班級訊息")
		Else
		%>
                  <table width="608" height="56" border="1" align="center" cellpadding="0" cellspacing="0" bordercolordark="#FFFFFF" bordercolorlight="#B1C7EC">
                    <tr>
                      <td width="190" height="26"><div align="center" class="style7" style="font-size: 9pt">班級名稱</div></td>
                      <td width="244"><div align="center" class="style7">班級內人數</div></td>
                      <td colspan="2"><div align="center" class="style7">管理</div></td>
                    </tr>
                    <%
		  '分頁
		  rs.pagesize=13
		  page1=clng(request("page1"))
		  if page1<1 then page1=1
		  rs.absolutepage=page1
		  for i=1 to rs.pagesize
		  if isNull(rs("c")) then
		  	c=0
		  else
		  c=rs("c")
		  end if
		%>
                    <tr>
                      <td><div class="style7"><span class="style3"> 　　　→</span>&nbsp;<%=rs("name1")%></div></td>
                      <td class="style7"><div align="center" class="STYLE21"><%=c%></div></td>
                      <td width="69" class="style7"><div align="center" class="STYLE21">修改</div></td>
                      <td width="95" class="style7"><div align="center">移除</div></td>
                    </tr>
                    <%
	  rs.movenext
	  if rs.eof then exit for 
	  next
	  %>
                  </table>
                <table width="612" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="601" height="25" class="STYLE21"><div align="right" class="style7">
                          <% if page1<>1 then%>
                          <a href="<%=path1%>?page1=1" class="STYLE21">第一頁</a> <a href="<%=path1%>?page1=<%=(page1-1)%>" class="STYLE21"> 上一頁</a>
                          <%end if %>
                          <%if page1<>rs.pagecount then%>
                          <a href="<%=path1%>?page1=<%=(page1+1)%>" class="STYLE21">下一頁</a> <a href="<%=path1%>?page1=<%=rs.pagecount%>" class="STYLE21" >最後一頁</a>
                          <%end if%>
                      </div></td>
                    </tr>
                  </table>
                <%end if%></td>
            </tr>
          </table>            <p align="center">&nbsp;</p></td>
        </tr>
    </table>      </td>
    <td width="11" valign="top" background="images/right0.gif">&nbsp;</td>
  </tr>
  <tr>
    <td width="10" height="13" valign="top" background="images/left.gif">&nbsp;</td>
    <td width="812" height="13" valign="top" background="images/99.gif">&nbsp;</td>
    <td width="11" height="13" valign="top" background="images/right.gif">&nbsp;</td>
  </tr>
</table>
<table width="833" height="14" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td><!--#include file="copyright.asp"--></td>
        </tr>
</table>
</body>
</html>
