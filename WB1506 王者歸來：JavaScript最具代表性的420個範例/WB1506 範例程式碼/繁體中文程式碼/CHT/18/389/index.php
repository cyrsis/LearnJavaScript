<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>工作計劃</title>
<link rel="stylesheet" type="text/css" href="style.css">
<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
-->
</style>
</head>
<script language="javascript">
function open_day_from()
 {
   var day;
   day=window.showModalDialog('day.php','','dialogWidth=300px;dialogHeight=50px; scrollbars=no;status=no');
   if(day==undefined)
    {
	 day="";
	}
   document.form1.timefrom.value=day;
 }
 
 function open_day_to()
 {
   var day;
   day=window.showModalDialog('day.php','','dialogWidth=300px;dialogHeight=50px; scrollbars=no;status=no');
    if(day==undefined)
    {
	 day="";
	}
   document.form1.timeto.value=day;
 }
</script>
<body topmargin="0" leftmargin="0" bottommargin="0">
<table width="500" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="250" bgcolor="#0099CC"><table width="500" border="0" align="center" cellpadding="0" cellspacing="1">
      <form name="form1">
	  <tr>
        <td height="20" colspan="5" bgcolor="#0099CC"><div align="center" class="STYLE1">工作計劃</div></td>
      </tr>
      <tr>
        <td width="79" height="25" bgcolor="#FFFFFF"><div align="center">主旨：</div></td>
        <td colspan="4" bgcolor="#FFFFFF">&nbsp;<input type="text" name="title" size="65" class="inputcss"></td>
      </tr>
      <tr>
        <td height="25" bgcolor="#FFFFFF"><div align="center">時間：</div></td>
        <td width="53" height="25" bgcolor="#FFFFFF"><div align="center">從</div></td>
        <td width="154" bgcolor="#FFFFFF">
          <table width="150" height="20" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="112"><input type="text" name="timefrom" size="18" class="inputcss" /></td>
              <td width="38">&nbsp;<img src="images/date.gif" width="20" height="20" onclick="open_day_from()"/></td>
            </tr>
          </table></td>
        <td width="50" bgcolor="#FFFFFF"><div align="center">到</div></td>
        <td width="158" bgcolor="#FFFFFF"><table width="150" height="20" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="112"><input type="text" name="timeto" size="18" class="inputcss" /></td>
            <td width="38">&nbsp;<img src="images/date.gif" width="20" height="20" onclick="open_day_to()" /></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="125" bgcolor="#FFFFFF"><div align="center">內容：</div></td>
        <td height="125" colspan="4" bgcolor="#FFFFFF">&nbsp;<textarea name="content" rows="8" cols="65" class="inputcss"></textarea></td>
      </tr>
      <tr>
        <td height="25" colspan="5" bgcolor="#FFFFFF"><div align="center"><input type="submit" value="儲存" class="buttoncss"></div></td>
      </tr>
      <tr>
        <td height="20" colspan="5" bgcolor="#0099CC"><div align="center"></div></td>
      </tr>
	  </form>
    </table></td>
  </tr>
</table>
</body>
</html>
