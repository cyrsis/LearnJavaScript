<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>在PHP中呼叫Word自動列印指定格式的會議記錄</title>
</head>
<body>
<?php
//取得範本文件所在的路徑					
$path="http://".$HTTP_HOST.dirname($PHP_SELF)."/meetingDot.doc";
?>
<form name="form1" method="post" action="">
  <table width="609" height="441" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td valign="top" background="images/images_01.gif"><table width="609" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="22" height="105">&nbsp;</td>
          <td width="560">&nbsp;</td>
          <td width="27">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><table width="550" height="288" border="0" align="center" cellspacing="0" >
            <tr >
              <td width="84" height="32" align="right">會議標題：</td>
              <td width="462" colspan="2" align="left" ><input name="title" type="text" id="title4" value="2006年終工作複習報告" size="50"></td>
            </tr>
            <tr >
              <td height="31" align="right">會議時間：</td>
              <td colspan="2" align="left" ><input name="meetingTime" type="text" id="meetingTime" value="2006年12月31日"></td>
            </tr>
            <tr >
              <td height="34" align="right" >主
                持 人：</td>
              <td colspan="2" align="left" ><input name="compere" type="text" id="compere" value="賽經理"></td>
            </tr>
            <tr >
              <td height="39" align="right" >出席人員：</td>
              <td colspan="2" align="left" ><input name="attend" type="text" id="attend" value="全體員工" size="58"></td>
            </tr>
            <tr >
              <td height="99" align="right" >會議內容：</td>
              <td colspan="2" align="left" ><textarea name="content" cols="56" rows="6" class="wenbenkuang" id="content">    回顧2006，展望2007！要求明日員工在新的一年裡個人的綜合素質有一個全面的提昇，提昇自己的學識，累積豐富的工作經驗，是提昇個人素質的關鍵因素所在。而踏踏實實的增長學識、開闊眼界才是提昇個人素質的長遠方法。三人同行，則成眾，眾志成誠，方能撐起企業的現在與未來。企業的發展，離不開團隊的精誠合作。</textarea></td>
            </tr>
            <tr align="center">
              <td height="53" colspan="3"><input name="Submit" type="button" class="btn_grey" onClick="outDoc()" value="Word列印"></td>
            </tr>
          </table></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="25">&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
      </table></td>
    </tr>
  </table>
</form>
<?php
$str=<<<word
<script language="javascript">
function outDoc(){
	var wdapp=new ActiveXObject("Word.Application");
	wdapp.visible=true;
	wddoc=wdapp.Documents.Open("$path");     //開啟特殊的文件
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
word;
echo $str;
?>
</body>
</html>
