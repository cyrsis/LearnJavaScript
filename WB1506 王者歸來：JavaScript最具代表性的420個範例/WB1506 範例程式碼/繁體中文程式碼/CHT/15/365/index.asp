<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="conn.asp"-->
<%

session.Timeout="260"  '設定生命周期是260分鍾(session變數生命周期預設20分鍾),為了避免thief.asp頁面自動更新前session變數就釋放,所以該設生命周期設設定的比下一個頁面自動更新時間稍長
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>遠端取得其他網頁情報</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
}
.style7 {font-size: 12px; }

.style11 {font-family: "Times New Roman", Times, serif}
-->
</style></head>
<body onLoad="aa()">
<object classid="clsid:48E59293-9880-11CF-9754-00AA00C00908" name="inte">
</object>
<script language="javascript">
function aa(){
html=inte.openurl("http://192.168.1.14:8080/cpjs/cpbj.asp");
productname="珍視明滴眼液";                  //想要查詢的字串
productlocation=html.indexOf(productname);     //indexOf是指想string物件內第一次出現子字串的字元位置
area1="產地：";                    //想要查詢的字串
arealocation=html.indexOf(area1,productlocation); 
ending1="</font></td>";                         //查詢字段是</font></td>
productlocation1=html.indexOf(ending1,arealocation);     //以arealocation作為開始位置，查詢字段為ending的位置
productarea=html.slice(arealocation+3,productlocation1);    //傳回字串片斷
form1.productarea.value=productarea;             
standard="規格：";  
standardlocation=html.indexOf(standard,productlocation);  
ending11="</font></td>";
standardlocation1=html.indexOf(ending11,standardlocation);
standards=html.slice(standardlocation+3,standardlocation1);
form1.standard.value=standards;       
standardlocation=html.indexOf(standard);
casing="包裝：";  
casinglocation=html.indexOf(casing,productlocation); 
ending12="</font></td>";
casinglocation1=html.indexOf(ending12,casinglocation);
casings=html.slice(casinglocation+3,casinglocation1);
form1.casing.value=casings;
price="單價：";    
pricelocation=html.indexOf(price,productlocation);
ending13="（元）</font></td>"; 
pricelocation1=html.indexOf(ending13,pricelocation) ;
price1=html.slice(pricelocation+3,pricelocation1) ; 
form1.price.value=price1;
html1=inte.openurl("http://192.168.1.14:8080/cpjs/cpjs.asp");
product="珍視明滴眼液";
productlocation=html1.indexOf(product);
introduce="詳細介紹：";
locations=html1.indexOf(introduce,productlocation);
ending="</font></td>";
location1=html1.indexOf(ending,locations);
introduction=html1.slice(locations+5,location1);
form1.introduce.value=introduction;
}
</script>
<table width="500" height="363" border="0" align="center" background="images/houtai.gif">
<tr>
<td align="center" height="79" valign="bottom">&nbsp;</td>
</tr>
<tr>
 <td width="755" height="274" align="center">  <form name="form1" method="post" action="">
   <table width="540" height="241" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
     <td width="534" height="241" align="center" valign="top">
      <table width="537" border="0" height="3">
        <tr>
          <td width="527">&nbsp;</td>
        </tr>
      </table>
      <table width="80%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="23%"class="style7">產&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地：            </td>
          <td width="77%"><input name="productarea" type="text" id="productarea" size="45"></td>
        </tr>
        <tr>
          <td  class="style7">規&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格：            </td>
          <td><input name="standard" type="text" id="standard2" size="45"></td>
        </tr>
        <tr>
          <td class="style7">包&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;裝：</td>
          <td><input name="casing" type="text" id="casing2" size="45"></td>
        </tr>
        <tr>
          <td class="style7">價&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格：</td>
          <td><input name="price" type="text" id="price2" size="45"></td>
        </tr>
        <tr>
          <td class="style7">詳細介紹：</td>
          <td><textarea name="introduce" cols="46" rows="5" id="introduce"></textarea></td>
        </tr>
      </table>
       </td>
    </tr>
   </table>
  </form>
   </p></td>
</tr>
</table>
</body>
</html>
