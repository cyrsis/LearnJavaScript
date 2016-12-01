<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="Conn/conn.asp" -->
<%
'查詢使用者輸入的員工姓名是否存在
Set rs_toname = Server.CreateObject("ADODB.Recordset")
sql_toname = "SELECT UserName,branch FROM Tab_User"
rs_toname.open sql_toname,conn,1,3
%>

<html>
<head>
<title>出現網頁模式交談視窗</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="style.css" rel="stylesheet">
</head>

<body>
<table width="557" height="401" border="0" cellpadding="-2" cellspacing="-2" background="images/bbs/bbs_add.gif">
  <tr>
    <td width="817" height="349" valign="top"><table width="100%" height="115"  border="0" cellpadding="-2" cellspacing="-2">
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table>      
        <table width="80%" height="77"  border="0" align="center" cellpadding="-2" cellspacing="-2">
          <tr>
            <td height="13"></td>
          </tr>
	<%for i=1 to rs_toname.recordcount
		  if i mod 2=1 then
		  %>
		  <script language="javascript">
		  function action(user){
		  	parent.window.returnValue=user;
			window.close();
		  }
		  </script>
          <tr>
            <td height="25" valign="top"><a href="#" onClick="action('<%=rs_toname("UserName")%>')"><%=rs_toname("UserName")%> [<%=rs_toname("branch")%>]</a></td>
			<%else%>
			<td height="25" valign="top"><a href="#" onClick="action('<%=rs_toname("UserName")%>')"><%=rs_toname("UserName")%> [<%=rs_toname("branch")%>]</a></td>
          </tr>
		  <%
		  end if
		  rs_toname.movenext()
	 next%>
          <tr>
            <td></td>
          </tr>
      </table>
	</td>
  </tr>
</table>
</body>
</html>