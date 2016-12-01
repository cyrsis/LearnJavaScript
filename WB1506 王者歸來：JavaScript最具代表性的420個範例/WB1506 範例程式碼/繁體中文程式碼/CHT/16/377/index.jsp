<%@ page contentType="text/html; charset=utf-8" language="java" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>呼叫Excel</title>
<link href="CSS/style.css" rel="stylesheet">
</head>

<body>


<form name="form1" method="post" action="">  
<table width="777" height="830" border="0" align="center" cellspacing="0" background="book.jpg" class="tableBorder" >
    <tr align="center">
      <td width="618" height="409">&nbsp;</td>
      <td width="142">&nbsp;</td>
      <td width="9">&nbsp;</td>
    </tr>
    <tr align="center">
      <td height="225" align="center">&nbsp;</td>
      <td align="left" valign="top"><table width="100%" height="208" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="14%" height="40" align="center"><img src="list.gif" width="11" height="13"></td>
          <td width="86%" height="40">visual basic函數參考大全</td>
        </tr>
        <tr>
          <td height="40" align="center"><img src="list.gif" width="11" height="13"></td>
          <td height="40">Visual Basic套用開發完全手冊</td>
        </tr>
        <tr>
          <td height="40" align="center"><img src="list.gif" width="11" height="13"></td>
          <td height="40">visual basic控制項參考大全</td>
        </tr>
        <tr>
          <td height="13" align="center"><img src="list.gif" width="11" height="13"></td>
          <td height="40">Delphi元件參考大全</td>
        </tr>
        <tr>
          <td colspan="2" align="center"><input name="Submit" type="button" class="btn_grey" onClick="outExcel()" value="檢視更多銷售排行"></td>
        </tr>
      </table></td>
      <td align="center">&nbsp;</td>
    </tr>
    <tr align="center">
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
</body>
</html>
<%
//取得範本文件所在的路徑
int at=request.getRequestURL().lastIndexOf("/");
String path_part=request.getRequestURL().substring(0,at+1)+"booksort.xls";
%>
<script language="javascript">
function outExcel(){
	var excelapp=new ActiveXObject("Excel.Application");
	excelapp.visible=true;
	objBook=excelapp.Workbooks.Open("<%=path_part%>"); //開啟工作簿
	var objSheet = objBook.ActiveSheet;

	//excelapp.UserControl = true;
	objSheet=null;
	excelapp=null;
}
</script>