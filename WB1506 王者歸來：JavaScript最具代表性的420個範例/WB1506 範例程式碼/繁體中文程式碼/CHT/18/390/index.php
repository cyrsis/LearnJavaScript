<?php session_start();?>
<title>出現提示交談視窗並重新導向網頁</title>
<?php 
if($gly==true && $mima==true){
if($ljid==true){
$ljid=$_GET['ljid'];
echo "這就是出現提示交談視窗並重新導向網頁!";}
?>
<?php }else{
echo "<script>alert ('這就是出現提示交談視窗並重新導向網頁!'); window.location.href='admin.php';</script>";
}
?>