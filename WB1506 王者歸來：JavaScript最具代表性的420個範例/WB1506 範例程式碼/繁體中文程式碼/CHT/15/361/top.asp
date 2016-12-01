<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
<!--
body {
	margin-top: 0px;
	margin-bottom: 0px;
}
.style2 {
	font-size: 9pt;
	color: #000000;
}
-->
</style>
<script src="Js1/DateTime.js"></script>
<title></title><body onLoad="ShowTime(Time)">
<table width="833" height="114" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="images/top.gif" width="833" height="114" border="0" usemap="#Map">
      <map name="Map">
        <area shape="rect" coords="741,85,820,116" href="#" onClick="if( confirm('是否真的離開背景?')){window.location.href='index.asp';}">
    </map></td>
  </tr>
</table>
<table width="833" height="37" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="37" background="images/top1.gif"><table width="805" height="15" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="48" height="31" rowspan="2">&nbsp;</td>
        <td width="93" rowspan="2"></td>
        <td width="60" height="13" valign="bottom"><span class="style2"><%=session("wz")%></span></td>
        <td width="352" rowspan="2"></td>
        <td width="252" rowspan="2" align="center" valign="middle" class="style2" id="Time"><script language="javascript">ShowTime(Time)</script></td>
      </tr>
      <tr>
        <td height="2"></td>
      </tr>
    </table></td>
  </tr>
</table>     
