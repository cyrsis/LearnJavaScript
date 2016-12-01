<?php session_start(); include("Conn/conn.php");$furl=getenv("HTTP_REFERER");
if($ljid==true){
$ljid=$_GET['ljid'];
$query="delete from tb_javascript where id='$ljid'";
$result=mysql_query($query);
if($result==true){
  echo "移除成功!!";
  echo "<meta http-equiv=\"Refresh\" content=\"2;url=$furl\">";
}else{echo "移除失敗!";}}
?>
