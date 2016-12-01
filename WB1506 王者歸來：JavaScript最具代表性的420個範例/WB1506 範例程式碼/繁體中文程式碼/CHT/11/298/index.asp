<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>在ASP中利用Word自動列印指定格式的會議記錄</title>
<link href="CSS/style.css" rel="stylesheet">
</head>

<body>


<form name="form1" method="post" action="">  
<table width="560" height="348" border="0" align="center" cellspacing="0" background="tupian.gif" >
    <tr align="center">
      <td width="59" height="25" align="right" valign="bottom">&nbsp;</td>
      <td height="25"  colspan="2" align="left" valign="bottom">&nbsp;列印會議記錄</td>
      <td width="383" align="left" valign="bottom">&nbsp;</td>
    </tr>
    <tr align="center">
      <td height="18"  colspan="4">&nbsp;</td>
    </tr>
    <tr >
      <td height="27" colspan="2" align="right">會議標題：</td>
      <td colspan="2" align="left" ><input name="title" type="text" id="title" value="2006年終工作複習報告" size="50"></td>
    </tr>
    <tr >
      <td height="27" colspan="2" align="right">會議時間：</td>
      <td colspan="2" align="left" ><input name="meetingTime" type="text" id="meetingTime" value="2007年01月07日"></td>
    </tr>
    <tr >
      <td height="27" colspan="2" align="right" >主 持 人：</td>
      <td colspan="2" align="left" ><input name="compere" type="text" id="compere" value="總經理"></td>
    </tr>
    <tr >
      <td height="27" colspan="2" align="right" >出席人員：</td>
      <td colspan="2" align="left" ><input name="attend" type="text" id="attend" value="全體員工" size="58"></td>
    </tr>
    <tr >
      <td height="99" colspan="2" align="right" >會議內容：</td>
      <td colspan="2" align="left" ><textarea name="content" cols="56" rows="5" class="wenbenkuang" id="content">回顧過去，展望未來！</textarea></td>
    </tr>
    <tr align="center">
      <td height="53" colspan="4"><input name="Submit" type="button" class="btn_grey" onClick="outDoc()" value="Word列印"></td>
    </tr>
  </table>
</form>
<%
'取得範本文件所在的路徑
path=mid(request.ServerVariables("URL"),1,InStrRev(request.ServerVariables("URL"),"/"))
path_part="HTTP://"&request.ServerVariables("LOCAL_ADDR")&":"&_
 request.ServerVariables("SERVER_PORT")&path&"meetingDot.doc"
%>
<script language="javascript">
function outDoc(){
	var wdapp=new ActiveXObject("Word.Application");
	wdapp.visible=true;
	wddoc=wdapp.Documents.Open("<%=path_part%>");     //開啟特殊的文件
	var form=document.all.form1;
	title=form.title.value;
	meetingTime=form.meetingTime.value;
	compere=form.compere.value;
	attend=form.attend.value;
	content=form.content.value;
	//輸出會議標題
	range =wdapp.ActiveDocument.Bookmarks("title").Range;
	range.Text=title;  
	//輸出會議時間
	range =wdapp.ActiveDocument.Bookmarks("meetingTime").Range;
	range.Text=meetingTime;  
	//輸出會議主持人
	range =wdapp.ActiveDocument.Bookmarks("compere").Range;
	range.Text=compere;  
	//輸出出席人員
	range =wdapp.ActiveDocument.Bookmarks("attend").Range;
	range.Text=attend;
	//輸出會議內容
	range =wdapp.ActiveDocument.Bookmarks("content").Range;
	range.Text=content;	    
	wddoc.Application.Printout();
	wdapp=null;
}
</script>
</body>
</html>
