<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>檢視訊息視窗</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-bottom: 0px;
	margin-top: 0px;
}
.STYLE1 {font-size: 9pt}
.STYLE2 {color: #FFFFFF}
.STYLE4 {font-size: 9pt; color: #FF0000; }
.STYLE6 {font-size: 9pt; color: #000000; }
-->
</style></head>
<body>
<table width="415" height="299" border=0 align=center cellpadding=0 cellspacing=0>
	<tr>
		<td width="415" height="299" valign=top background="images/user.gif"><table width=88% border=0 align=center cellpadding=0 cellspacing=0>
          <tr>
            <td width="62%" height=13 colspan=3></td>
          </tr>
          <tr>
            <td height="22" colspan="3" bgcolor="#FAC33C"><div align=center class="STYLE1"><font color="#FFFFFF">寵物詳細訊息一覽表</font></div></td>
          </tr>
          <tr>
            <td colspan=3></td>
          </tr>
          <tr>
            <td colspan=3>
<!-- #include file="Conn/conn.asp" -->
<% 
	if request.QueryString("id")<>"" then
	ID=request.QueryString("id") 
  	end if
	set rs=server.CreateObject("adodb.recordset")
	sql="select * from tb_Goods where ID="&ID
  	rs.open sql,conn,1,3
	IF not rs.eof or not rs.bof then 
%>
                <table width="323" height="194" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="157" height="103"><img src="images/goods/<%=rs("picture")%>" width="155" height="95" border="1"></td>
                    <td width="156"><table width="156" height="119" border="0" align="center">
                        <tr>
                          <td width="150" height="24" valign="bottom"><span class="style10"><%=rs("goodsname")%> </span></td>
                        </tr>
                        <tr>
                          <td height="22" class="STYLE6">原價：<%=rs("price")%>.00元</td>
                        </tr>
                        <tr>
                          <td height="21"><span class="style11"><span class="STYLE4">現價：</span></span><span class="STYLE4"><%=rs("nowprice")%>.00元</span> </td>
                        </tr>
                        <tr>
                          <td height="20" valign="top" class="STYLE6">發布日期：<%=rs("INTime")%></td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="12" colspan="2"><div align="center" class="STYLE1"><font color="#FFFFFF">寵物</font><span class="STYLE2">關聯訊息</span></div></td>
                  </tr>
                  <tr>
                    <td height="55" colspan="2">
                        <div align="left">
                          <textarea name="textarea" cols="35" rows="4" class="wenbenkuang"><%=rs("introduce")%></textarea>
                        </div></td>
                  </tr>
                </table>
              <% 
	End if 
	set rs=nothing
	conn.close
	set conn=nothing
%>
            </td>
          </tr>
  <td height="26"></div>
      <div align="center"><a href="#" onclick="javascript:window.close()">【關閉視窗】</a></div>
  </table></td>
	</tr>
</table>
</body>
</html>
