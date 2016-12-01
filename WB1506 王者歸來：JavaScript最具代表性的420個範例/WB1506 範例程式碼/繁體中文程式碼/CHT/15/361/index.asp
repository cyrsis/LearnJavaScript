<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="Conn/Conn.asp"-->
<%
'*****************************
'功能:出現提示交談視窗並重新導向網頁
'呼叫方法:message "提示內容","重新導向網頁的url位址"
'*****************************
function message(content,url)
	response.Write("<script language='javascript'>alert('"&content&"');window.location.href='"&url&"';</script>")
	response.End()
end function
%>
<%
function filter_Str(InString)
	NewStr=Replace(InString,"'","''")
	NewStr=Replace(NewStr,"<","&lt;")
	NewStr=Replace(NewStr,">","&gt;")
	NewStr=Replace(NewStr,"chr(60)","&lt;")
	NewStr=Replace(NewStr,"chr(37)","&gt;")
	NewStr=Replace(NewStr,"""","&quot;")
	NewStr=Replace(NewStr,";",";;")
	NewStr=Replace(NewStr,"--","-")
	NewStr=Replace(NewStr,"/*"," ")
	NewStr=Replace(NewStr,"%"," ")
	filter_Str=NewStr
end function
if Request.Form("admin_name")<>"" and request.Form("admin_pass")<>"" then
	admin_name=filter_Str(request.Form("admin_name"))
	admin_pass=filter_Str(request.Form("admin_pass"))
	set rs=server.CreateObject("adodb.recordset")
	sql="select * from tb_admin where admin_name='"&admin_name&"'"
    rs.open sql,conn,1,3
		if rs.eof and rs.bof then 
%>
			<script language="javascript">
			alert("您輸入的使用者名稱稱錯誤，請重新輸入！");
			history.back(-1);
			 </script> 
				<%
				else 
					if rs("admin_pass")=admin_pass then
					session("name")=admin_name
				    message "歡迎登入新城校友錄背景管理系統！","schoolbook_index.asp"
				 %>
				<%else%>
					<script language="javascript">
					alert("您輸入的使用者密碼錯誤，請重新輸入！");
					history.back(-1);
					</script>  		
			<%
			end if
		end if
	end if
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>背景使用者登入頁面</title>
<style type="text/css">
<!--
body {
	background-image: url();
}
.style1 {
	font-size: 9pt;
	color: #000000;
}
-->
</style></head>
<script language="javascript">
function Mycheck()
{
if(form1.admin_name.value=="")
{alert("請輸入使用者名稱！！");form1.admin_name.focus();return;}
if(form1.admin_pass.value=="")
{alert("請輸入密碼！！");form1.admin_pass.focus();return;}
form1.submit();
}
</script>
<body>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table width="405" height="327" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td background="images/4.jpg">
	<form name="form1" action="" method="post">
<table width="225" height="86" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="88" height="25"><div align="center" class="style1">使用者名稱:</div></td>
    <td width="193">
      <input name="admin_name" type="text" id="admin_name" onKeyDown="if(event.keyCode==13){form1.admin_pass.focus();}" size="19">
    </td>
  </tr>
  <tr>
    <td height="25"><div align="center" class="style1">密　碼:</div></td>
    <td>
      <input name="admin_pass" type="password" id="admin_pass" onKeyDown="if(event.keyCode==13){form1.Submit.focus();}">
   </td>
  </tr>
  <tr>
    <td height="25" colspan="2"><div align="center">
      <input type="button" name="Submit" value="登入" onClick="Mycheck();">
      　
      <input type="reset" name="Submit2" value="重設">
    </div></td>
  </tr>
</table>
    </form>
	</td>
  </tr>
</table>
</body>
</html>
