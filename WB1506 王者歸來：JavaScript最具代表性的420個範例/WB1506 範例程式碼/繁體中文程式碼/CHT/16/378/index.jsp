<%@ page contentType="text/html; charset=utf-8" language="java" %>
<html>
<head>
<title>呼叫PowerPoint</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet">
</head>
<body>
<input name="Submit" type="button" class="btn_grey" value="呼叫PowerPoint示範" onClick="outPpt()">
<%
//取得PowerPoint文件所在的路徑
int at=request.getRequestURL().lastIndexOf("/");
String path_part=request.getRequestURL().substring(0,at+1)+"demo.ppt";
%>
<script language="javascript">
function outPpt(){
	var pptapp=new ActiveXObject("PowerPoint.Application");
	pptapp.visible=true;
	pptapp.Presentations.Open("<%=path_part%>"); //開啟檔案
}
</script> 
	<!--在執行該程式時，應該將瀏覽器中的安全設定－－Internet選項的安全值調至最低-->
</body>
</html>
