<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--#include file="conn/conn.asp"-->
<%
del="delete from Tab_bm where id="&request.QueryString("id")
conn.execute(del)
%>
<script language="javascript">
{alert("部門計劃訊息移除成功!")}
window.location.href='index.asp';
</script>