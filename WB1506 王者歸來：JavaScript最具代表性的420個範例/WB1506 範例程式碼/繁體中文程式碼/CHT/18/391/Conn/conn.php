<?php 
$id=mysql_connect("localhost","root","root") or die('連線失敗:' . mysql_error());
if(mysql_select_db("db_database01",$id))
  echo "";
 else
  echo ('資料庫選取失敗:' . mysql_error());
mysql_query("set names utf-8");
?>