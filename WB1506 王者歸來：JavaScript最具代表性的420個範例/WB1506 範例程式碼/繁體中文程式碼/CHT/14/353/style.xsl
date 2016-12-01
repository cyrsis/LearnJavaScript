<?xml version='1.0' encoding='utf-8'?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <head>
    <title>ʹӃXSLϔʾXML΄嵼/title>
	<style>
	td {
	font-size: 9pt;	color: #000000;
}
body {
	margin: 0px;
}
.tableBorder {
	border: #aaaaaa 1px solid
}
	</style>
    </head>
<body>
<table width="780"  border="0" align="center" cellpadding="0" cellspacing="0" background="Images/bg.jpg" class="tableBorder">
  <tr>
    <td width="26%" height="112" valign="top"> </td>
    </tr>
  <tr>
    <td height="248" align="center" valign="top"><table width="90%" border="1" bordercolor="#FFFFFF" bordercolordark="#FFFFFF" bordercolorlight="#999999" cellpadding="0" cellspacing="0">
          <tr height="27">
            <td align="center">ʩꅼ/td>
            <td align="center">ʩu</td>
            <td align="center">׷՟</td>
            <td align="center">㶰執</td>
          </tr>
          <xsl:for-each select="books/book">
            <tr height="27">
              <td><xsl:value-of select="ISBN"/></td>
              <td><xsl:value-of select="bookname"/></td>
              <td><xsl:value-of select="author"/></td>
              <td><xsl:value-of select="publishing"/></td>
            </tr>
          </xsl:for-each>
      </table></td>
  </tr>
  <tr>
    <td height="69" valign="top"> </td>
  </tr>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
