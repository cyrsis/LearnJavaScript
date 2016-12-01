<?php session_start();include "Conn/conn.php";?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>樹狀導覽選單</title>
<script language=JavaScript src=script/spgl_lmkz.js type=text/javascript></script>
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
.style1 {font-size: 13px}
-->
</style></head>
<body>
<table width="1004" height="93" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="93"><img src="image/top.jpg" width="1004" height="93" border="0"></td>
  </tr>
</table>
<table width="1004" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="189" height="33"><img src="image/top1.jpg" width="189" height="33"></td>
    <td width="116"><img src="image/top2.jpg" width="116" height="33"></td>
    <td background="image/top3.jpg">:<span class="style1"><?php echo $lmnr;?></span></td>
  </tr>
</table>
<table width="1004" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="189" align="center" valign="top" background="image/left.jpg" class="bianxian02"> 
      <table width="189" height="450" border="0" cellpadding="0" cellspacing="0" background="image/left.jpg">
        <tr> 
          <td align="center" valign="top"> <br> 
            <div id='KB1Parent' class='parent'> 
              <table width="85%" border="0" cellspacing="0" cellpadding="0">
                <tr> 
                  <td width="84%" height="25" ><a href="#"  class="white01" onClick="expandIt('KB1'); return false"> 
                   &nbsp;企業管理</a></td>
                </tr>
              </table>
            </div>
            <div id='KB1Child'> 
              <table width="85%" border="0" cellspacing="0" cellpadding="0">
			  <?php $query="select * from tb_javascript where lmlb='企業管理'";
			      $result=mysql_query($query);
				  while($myrow=mysql_fetch_array($result)){
			  ?>
                <tr> 
                  <td width="42%" height="23" align="right">-|</td>
                  <td width="58%" height="23"><a href="index.php?lmbs=<?php echo $myrow[lmnr];?>"  ><?php echo $myrow[lmnr];?></a></td>
                </tr>
				<?php }?>
              </table>
            </div>
            <div id='KB2Parent' class='parent'> 
              <table width="85%" border="0" cellspacing="0" cellpadding="0">
                <tr> 
                  <td width="84%" height="25"><a href="#"  class="white01" onClick="expandIt('KB2'); return false">&nbsp;業務管理</a></td>
                </tr>
              </table>
            </div>
            <div id='KB2Child' class='child'> 
              <table width="85%" border="0" cellspacing="0" cellpadding="0">
              <?php $query=mysql_query("select * from tb_javascript where lmlb='業務管理'");
			        while($myrows=mysql_fetch_array($query)){
			  ?>
			    <tr>
                  <td align="right">-|</td>
                  <td height="23"><a href="index.php?lmbs=<?php echo $myrows[lmnr];?>"><?php echo $myrows[lmnr];?></a></td>
                </tr>
              <?php }?>
              </table>
            </div>
            <div id='KB3Parent' class='parent'> 
              <table width="85%" border="0" cellspacing="0" cellpadding="0">
			    <tr> 
                  <td width="83%" height="25"><a href="#"  class="white01" onClick="expandIt('KB3'); return false">&nbsp;公司產品</a></td>
                </tr>
              </table>
            </div>
            <div id='KB3Child' class='child'> 
              <table width="85%" border="0" cellspacing="0" cellpadding="0">
                <?php $querys=mysql_query("select * from tb_javascript where lmlb='公司產品'");
			        while($myrows=mysql_fetch_array($querys)){
			    ?>
			    <tr> 
                  <td width="42%" align="right" class="white01">-|</td>
                  <td width="58%" height="23"><a href="index.php?lmbs=<?php echo $myrows[lmnr];?>"><?php echo $myrows[lmnr];?></a></td>
                </tr>
				<?php }?>
              </table>
			</div>     
          <SCRIPT>numTotal=3;scores[1]='KB1';scores[2]='KB1';scores[3]='KB2'</SCRIPT></td>
        </tr>
    </table>    </td>
    <td width="815" align="left" valign="top"><table width="815" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="30" colspan="3"><img src="image/middle1.jpg" width="815" height="30"></td>
        </tr>
      <tr>
        <td width="32" background="image/middle3.jpg">&nbsp;</td>
        <td width="751" align="center" valign="middle">
		<?php 
switch ($lmbs) {
	case "經驗技巧":
	    include "jyjq.php";
	break;
    case "工作管理":
	    include "ygrwgl.php";
	break;
	case "群組織機構":
	    include "zzjg.php";
	break;		
	case "圖書產品":
	    include "tscp.php";
	break;
	case "新技術交流":
	    include "xjs_jl.php";
	break;
	case "公司簡介";
	    include "gsjj.php";
	break;
	case "規章制度";
	    include "gzzd.php";
	break;
	case "軟體產品":
	    include "rjcp.php";
	break;
	case "工作管理":
	    include "ygrwgl.php";
	break;
	}
?>
		</td>
        <td width="32" background="image/middle4.jpg">&nbsp;</td>
      </tr>
      <tr>
        <td height="42" colspan="3"><img src="image/middle2.jpg" width="815" height="42"></td>
        </tr>
    </table></td>
  </tr>
  <tr> 
    <td height="36" colspan="2"><table width="100%" border="0" cellpadding="0" cellspacing="0" background="../images/diwen3.gif">
        <!--DWLayoutTable-->
        <tr> 
          <td height="36" valign="top"><img src="image/bottom.jpg" width="1004" height="36"></td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
