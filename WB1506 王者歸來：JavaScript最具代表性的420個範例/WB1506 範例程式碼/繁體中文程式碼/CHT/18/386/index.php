<?php include "Conn/conn.php";?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../CSS/style.css"  rel="stylesheet">
<title>瀏覽全部部落格文章</title>
<style type="text/css">
<!--
.style1 {
	font-size: 9pt;
	color: #cc0033;
}
-->
</style></head>
<body style="MARGIN-TOP: 0px; VERTICAL-ALIGN: top; PADDING-TOP: 0px; TEXT-ALIGN: center"> 
<table width="757" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="758" height="153" background="images/f_head.jpg">&nbsp;</td>
  </tr>
  <tr>
    <td height="224" background="images/bg.jpg"><table width="560" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#9CC739" bgcolor="#FFFFFF">
      <tr align="left" colspan="2" >
        <td width="390" height="25" colspan="3" valign="top" bgcolor="#CEEB6B"> <img src="images/fig_03.gif" width="21" height="17"><span class="tableBorder_LTR"> 檢視全部部落格文章 </span> </td>
      </tr>
      <tr>
        <td height="31" align="center" valign="top" ><table width="500"  border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><table width="504"  border="0" cellspacing="0" cellpadding="0" valign="top">
                  <?php
							$sql=mysql_query("select id,title from tb_article order by id desc");			
							$info=mysql_fetch_array($sql);
							do{
						  ?>
                  <tr>
                    <td width="504" align="left" valign="top"> &nbsp;・&nbsp;<a href="#" onClick="JScript:window.open('article.php?file_id=<?php echo $info[id];?>','','width=600,height=260')"><?php echo $info[title];?></a> </td>
                  </tr>
                  <?php 
					  }while($info=mysql_fetch_array($sql));
				 ?>
              </table></td>
            </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="82" align="center" background="images/footer.jpg">歡迎存取部落格網
      請使用IE
      6.0 在1024×768解析度下瀏覽本網站<br>
CopyRight@
2006 明日科技開發</td>
  </tr>
</table>
<p>&nbsp;</p>
</body>
</html>
