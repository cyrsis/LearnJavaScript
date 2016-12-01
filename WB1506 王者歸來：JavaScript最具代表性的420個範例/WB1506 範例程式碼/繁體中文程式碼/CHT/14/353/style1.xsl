<?xml version='1.0' encoding='utf-8'?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <head>
    <title>ʹӃXSLϔʾXML΄嵼/title>
    </head>
    <body>
      <h1 align="center">ͼʩЅϢP᭼/h1>
	  <style>
	  td,th{ font-size:12px;}
	  </style>
    <table width="90%" border="1" bordercolor="#FFFFFF" bordercolordark="#FFFFFF" bordercolorlight="#999999" cellpadding="0" cellspacing="0">
       <tr height="27">
         <th>ʩꅼ/th>
         <th>ʩu</th>
         <th>׷՟</th>
         <th>㶰執</th>
       </tr>
       <xsl:for-each select="books/book">
       <tr height="27">
         <td><xsl:value-of select="ISBN"/></td> 	   
         <td><xsl:value-of select="bookname"/></td> 
         <td><xsl:value-of select="author"/></td> 
         <td><xsl:value-of select="publishing"/></td> 
        </tr>
       </xsl:for-each>
       </table>
       </body>
       </html>
</xsl:template>
</xsl:stylesheet>
