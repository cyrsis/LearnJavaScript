<!--#include file="conn/conn.asp"-->
<%
Set rs_sale=server.CreateObject("ADODB.RecordSet")
sql="select top 3 * from tb_goods where newGoods=1 order by INTime desc"
rs_sale.open sql,conn,1,3
%>
<%
If(rs_sale.Eof)Then
	Response.Write("暫無寵物訊息!")
Else
%>
<style type="text/css">
<!--
.STYLE3 {font-size: 9pt}
.STYLE5 {font-size: 9pt; color: #000000; }
body {
	margin-bottom: 0px;
}
-->
</style>
<br><br><br><br>
<table width="500" border="0" cellpadding="0" cellspacing="0" align="center">
<tr>
<%
for i=1 to rs_sale.recordcount
if i mod 3=0 then
%>
<td height="189" valign="top"><table width="82%"  border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td height="95" colspan="2" align="center"><img src="images/goods/<%=rs_sale("picture")%>" width="150" height="100" border="1"></td>
                    </tr>
                    <tr>
                      <td height="22" colspan="2" align="center" class="STYLE5"><%=rs_sale("goodsname")%></td>
                    </tr>
                    <tr>
<td height="18" colspan="2" align="center" class="STYLE3" style="text-decoration:line-through;color:#FF0000">原價：<%=rs_sale("price")%> </td>
                    </tr>
                    <tr>
                      <td height="18" colspan="2" align="center" class="STYLE5">現價：<%=rs_sale("nowprice")%></td>
                    </tr>
                    <tr>
                      <td width="52%" height="22" align="center"><div align="right"><a href="#" onClick="javascript:window.open('chakan.asp?id=<%=rs_sale("ID")%>&type=new','','width=415,height=299,toolbar=no,location=no,status=no,menubar=no')"><img src="images/xianxi.gif" width="79" height="27" border="0" /></a></div></td>
                      <td width="48%" align="center"><div align="left">
                      &nbsp;<img src="images/mai.gif" width="51" height="27"></div></td>
                    </tr>
                  </table></td>
</tr> 
<%else%>
<td height="178" valign="top"><table width="82%"  border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td height="95" colspan="2" align="center"><img src="images/goods/<%=rs_sale("picture")%>" width="150" height="100" border="1"></td>
                      </tr>
                      <tr>
                        <td height="22" colspan="2" align="center" class="STYLE5"><%=rs_sale("goodsname")%></td>
                      </tr>
                      <tr>
                        <td height="18" colspan="2" align="center" class="STYLE3" style="text-decoration:line-through;color:#FF0000;">原價：<%=rs_sale("price")%> </td>
                      </tr>
                      <tr>
                        <td height="18" colspan="2" align="center" class="STYLE5">現價：<%=rs_sale("nowprice")%></td>
                      </tr>
                      <tr>
                        <td width="52%" height="22" align="center"><div align="right"><a href="#" onClick="javascript:window.open('chakan.asp?id=<%=rs_sale("ID")%>&type=new','','width=415,height=299,toolbar=no,location=no,status=no,menubar=no')">
                          <img src="images/xianxi.gif" width="79" height="27" border="0"></a></div></td>
                        <td width="48%" align="center"><div align="left">&nbsp;<img src="images/mai.gif" width="51" height="27"></div></td>
                      </tr>
                    </table></td>
<%
end if
rs_sale.movenext
next
%> 
</table>
<%end if%>