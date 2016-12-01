<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="function.asp"-->
<html>
<style type="text/css">
<!--
.style1 {color: #FF0000}
.style3 {color: #FF0000; font-weight: bold; }
-->
</style>
<head>
<title>開啟指定大小的新視窗並置中顯示</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="style.css">
</head>

<body>
<table width="636" height="251"  border="0" cellpadding="0" cellspacing="0" align="center">
  <tr>
    <td height="124" background="Images/Top0.GIF"><table width="100%" height="99"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="31">&nbsp;</td>
      </tr>
      <tr>
        <td><table width="100%" height="60"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="22%"><div align="right"><span class="style3">^_^</span>&nbsp;</div></td>
            <%call openwin("news_detail.asp",400,260,0)%>
            <td width="78%"> <a href="#" onClick="openwin0()">消費購物新感覺消費購物新感覺消費..........</a></td>
          </tr>
          <tr>
            <td><div align="right" class="orange"><span class="style3">^_^</span>&nbsp;</div></td><%call openwin("news_detail.asp",600,260,1)%>
            <td><a href="#" onClick="openwin1()">消費購物新感覺消費購物新感覺消費..........</a></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
