<?php session_start();include("Conn/conn.php");?>
<title>移除資料前，出現確認交談視窗</title>
<script language="javascript">
function delconfirm(x){
if(window.confirm('您確定移除該項嗎?')==true)
 {
  window.location.href='gly_ok.php?ljid='+x;}
}
</script>
<style type="text/css">
<!--
.style1 {font-size: 14px}
.style2 {font-size: 12px}
-->
</style>
<table width="300" border="1" cellpadding="0" cellspacing="2" background="image/left.jpg">
  <tr>
    <td width="111" align="center"><span class="style1">主旨</span></td>
    <td width="111" align="center" class="style1">內容</td>
    <td width="70">&nbsp;</td>
  </tr>
  <?php 
  $query="select * from tb_javascript where id";
  $result=mysql_query($query);
  while(@$myrow=mysql_fetch_array($result)){
  ?>
  <tr>
    <td align="center" valign="middle" class="style2"><?php echo $myrow[id];?>&nbsp;&nbsp;<?php echo $myrow[lmlb];?></td>
    <td align="center" class="style2"><p><?php echo $myrow[lmnr];?></p>	</td>
    <td align="center">
	<input type="submit" name="Submit3" onClick="delconfirm(<?php echo $myrow[id];?>)" value="移除">
   </td>
  </tr>
  <?php }?>
</table>
