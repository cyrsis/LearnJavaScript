<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>日期選取器</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<script language="javascript">
function close_day()
{
  window.returnValue=document.form2.n1.value+"-"+document.form2.y1.value+"-"+document.form2.r1.value;
  window.close();
}


</script>

<body>
<table width="250" height="25" border="0" align="center" cellpadding="0" cellspacing="0">
 <form name="form2">
  <tr>
    <td width="13"><div align="center"><a href="#" onclick="addday()"></a></div></td>
    <td width="80"><select name="n1">
	<?php
	 for($i=2005;$i<=2050;$i++)
	  {
	?>
      <option value=<?php echo $i;?>><?php echo $i;?></option>
	<?php
	  }
	?>  
    </select>
    年</td>
    <td width="64"><select name="y1">
	<?php
	 for($i=1;$i<=12;$i++)
	  {
	?>
      <option value=<?php echo $i;?>><?php echo $i;?></option>
	  <?php
	  }
	?> 
    </select>
    月</td>
    <td width="77"><select name="r1">
	<?php
	 for($i=1;$i<=31;$i++)
	  {
	?>
      <option value=<?php echo $i;?>><?php echo $i;?></option>
	 <?php
	  }
	?> 
    </select>
    日</td>
    <td width="16"><div align="center"><a href="#" onclick="subday()"></a></div></td>
  </tr>
  </form>
</table>
<table width="200" height="5" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td></td>
  </tr>
</table>
<table width="250" height="20" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><div align="center"><input type="button" onclick="close_day()" class="buttoncss" value="確定"></div></td>
  </tr>
</table>
</body>
</html>
