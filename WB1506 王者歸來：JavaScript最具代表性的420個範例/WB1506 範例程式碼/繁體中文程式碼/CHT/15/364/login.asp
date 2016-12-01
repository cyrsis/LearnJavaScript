<!--#include file="conn/conn.asp"-->
<%
if session("UserName")="" then
%>
<% 
		session.Timeout=120 
	if request.Form("UserName")<>"" and request.Form("PWD")<>"" then
		session("UserName")=request.Form("UserName")
		session("PWD")=request.Form("PWD")
		sql="select UserName,PWD from tb_user where UserName='"&session("UserName")&"'"
		set rs=conn.execute(sql)
		if rs.eof then 
	%>
			<script language="javascript">
			alert("您輸入的使用者名稱錯誤，請重新輸入！");
			 </script> 
			 <%
			 session.Abandon()  
			 '移除所有存在Session物件中的物件
		else 
			if rs("PWD")=session("PWD") then
				session("PWD")=request.Form("pwd") %>
				<script language="javascript">
				window.location.href="index.asp"
				</script>
			 <%else%>
				<script language="javascript">
				 alert("您輸入的使用者密碼錯誤，請重新輸入！");
				</script>  		
				<%session.Abandon()
			end if
		end if
end if
%>
	<script language="javascript">
	function Mycheck()
	{
	if(form1.username.value=="")
	{alert("請輸入使用者名稱後再進行登入!");form1.username.focus();return;}
	if(form1.pwd.value=="")
	{alert("使用者密碼不能為空!");form1.pwd.focus();return;}
	form1.submit();
	}
	</script>
	<style type="text/css">
<!--
.STYLE2 {font-size: 9pt}
.STYLE4 {font-size: 9pt; color: #000000; }
-->
    </style>
	
	<table width="188" height="119" border="0" align="right" cellpadding="0" cellspacing="0">
	  <tr>
		<td height="119">
		<form action="index.asp" name="form1" method="post">
				<table width="188" height="146" border="0" cellpadding="0" cellspacing="0">
				  <tr>
					<td height="37" valign="bottom"><div align="right"><img src="images/2222.gif" width="30" height="25"></div></td>
					<td height="37" valign="bottom"><span class="STYLE2">&nbsp;<span class="STYLE4">購買寵物請先登入</span></span></td>
				  </tr>
				  <tr>
					<td width="60" height="28" valign="bottom"><div align="center" class="STYLE4">使用者名稱</div></td>
					<td width="105" valign="bottom"><input name="username" type="text" id="username" size="15"></td>
				  </tr>
				  <tr>
					<td height="18"><div align="center" class="STYLE4">密 &nbsp;碼</div></td>
					<td><input name="pwd" type="password" id="pwd" size="15" /></td>
				  </tr>
				  <tr>
					<td height="21" colspan="2" valign="bottom"><div align="center">
					  <input type="button" name="Submit" value="登錄">
					  &nbsp;
					  <input type="button" name="Submit2" value="登入" onClick="Mycheck();">
					  &nbsp;
					  <input type="reset" name="Submit3" value="重設">
					</div></td>
				  </tr>
	      </table>
	    </form></td>
    </tr>
	</table>
	<%else%><table width="194" height="87" border="0" align="right" cellpadding="0" cellspacing="0">
			<tr>
			  <td width="66" valign="bottom"><div align="right"><img src="images/2222 (1).gif" width="30" height="25"></div></td>
			  <td width="128" valign="bottom"><span class="STYLE4">&nbsp;歡迎您光臨本網站</span></td>
			</tr>
			<tr>
			  <td colspan="2" valign="bottom"><div align="center">
				 <input name="Submit4" type="button" value="寵物已購完離開" onClick="if( confirm('是否真的離開?')){window.location.href='exit.asp';}">
			 </div></td>
			</tr>
		  </table><%end if%>
