<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>關閉出現視窗更新父視窗</title>
<link rel="stylesheet" type="text/css" href="style.css">
<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
-->
</style>
</head>
<script language="javascript">
function open_add()
 {
  window.open("addtype.php","newframe","width=200,height=50 ,left=200 ,top=200 ,location=no,menubar=no,toolbar=no,scrollbars=no,status=no");
 }
</script>
<body>
<table width="300" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td bgcolor="#006699"><table width="300" height="60" border="0" align="center" cellpadding="0" cellspacing="1">
      <tr>
        <td height="20" colspan="2" bgcolor="#006699"><div align="center" class="STYLE1">商品大類別管理</div></td>
      </tr>
      <tr>
        <td width="169" height="20" bgcolor="#FFFFFF"><div align="center">商品類別別</div></td>
        <td width="128" bgcolor="#FFFFFF"><div align="center">類別別加入時間</div></td>
      </tr>
	  <?php
	  include_once("conn.php");
	  $sql=mysql_query("select * from tb_type order by createtime desc",$conn);
	  $info=mysql_fetch_array($sql);
	  if($info==false)
	   {
	  ?>
      <tr>
        <td height="20" bgcolor="#FFFFFF"><div align="left"></div></td>
        <td height="20" bgcolor="#FFFFFF"><div align="center"><?php echo "暫無商品類別別";?></div></td>
      </tr>
	  <?php
	   }
	   else
	   {
	     do
		  {
	  
	  ?>
	   <tr>
        <td height="20" bgcolor="#FFFFFF"><div align="left"><?php echo $info[typename];?></div></td>
        <td height="20" bgcolor="#FFFFFF"><div align="center"><?php echo $info[createtime];?></div></td>
      </tr>
	  <?php
	      }
	     while($info=mysql_fetch_array($sql));
	   }
	  ?>
    </table></td>
  </tr>
</table>
<table width="300" height="5" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td></td>
  </tr>
</table>
<table width="300" height="20" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><div align="right"><input type="button" value="加入" class="buttoncss" onclick="javascript:open_add()"></div></td>
  </tr>
</table>
</body>
</html>
