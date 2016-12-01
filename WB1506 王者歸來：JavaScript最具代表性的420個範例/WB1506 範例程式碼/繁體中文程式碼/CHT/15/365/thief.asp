<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="conn.asp"-->
<%
if session("bases")<>0 then    '從index.asp頁前往thief.asp頁時session變數等於0，不執行這段敘述，不會造成兩個網頁不停相互跳躍
    session.Abandon()          'session變數的釋放
    response.Redirect "index.asp"    '重新指向index.asp頁面
end if
%>
<%
productarea=request.QueryString("area")         'QueryString集合取得作為跟在請求的URL的問號後面的文字傳遞給Web伺服器的值。
standards=request.QueryString("standard")       
casings=request.QueryString("casing")           
price1=request.QueryString("price")             
introduction=request.QueryString("introduct")
set Max_rs=server.CreateObject("adodb.recordset")                  '建立最大日期的記錄集
sql_max="select MAX(surveytime) as maxtime from product"           '查詢資料表中最大的日期,surveytime是資料表中一個字段，maxtime是隨便命名
Max_rs=conn.execute(sql_max)
max_surveytime=Max_rs("maxtime")       '分析資料表中最大的日期給予值給max_surveytime
times=cdate(max_surveytime)            'cdate將表達式轉為Date子型態。
nowtime=date()
interval=DateDiff("d",times,nowtime)   'DateDiff函數傳回兩個日期時間間隔，"d"代表傳回天數
if	interval<5 then
		  set Max_rs=nothing
else
		  set Max_rs=nothing
		  set rs=server.CreateObject("adodb.recordset")
          rs.open "select * from product",conn,1,3  '開啟product表
          rs.addnew                                 '增加一條新紀錄
          rs("price")=price1                         '將變數price的值賦給rs記錄集中price字段
          rs("surveytime")=date()                   '將目前時間date()賦給rs記錄集中surveytime字段
          rs("productingarea")=productarea          '將變數productarea的值賦給rs記錄集中productingarea字段
          rs("standard")=standards                   '將變數standard的值賦給rs記錄集中standard字段
          rs("casing")=casings                      '將變數casing的值賦給rs記錄集中casing字段
          rs("name")="珍視明滴眼液"                 '將變數name的值賦給rs記錄集中name字段
		  rs("introduction")=introduction
          rs.update
          rs.close
end if
session("bases")=1    'session變數的值重新給予值為1，原因：session值不再等於0，能執行最上面的if敘述，重新跳回index.asp頁面分析新的資料
%>
<html>
<head>
<meta http-equiv="refresh" content="14400"><%'每14400秒(4小時)自動更新一次%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>情報截取系統</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
}
.style3 {
	font-family: "華文新魏";
	font-size: 24px;
}
.style7 {font-family: "華文新魏"; font-size: 18px; }
.style10 {
	font-family: "華文新魏";
	font-size: 36px;
	color: #B1BBEB;
}
.style11 {font-family: "Times New Roman", Times, serif}
-->
</style></head>
<body background="images/bg.gif">
<table width="761" height="496" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
<td align="center" height="79" valign="bottom"><span class="style10"><span class="style11">A S P</span>情 報 獲 取 中 心</span>
</td>
</tr>
<tr>
 <td width="755" height="411" align="center">  <form name="form1" method="post" action="">
   <table width="540" height="359" border="0" align="center" cellpadding="0" cellspacing="0" background="images/cpjsbg1.gif">
    <tr>
     <td width="534" height="355" valign="top">
      <table width="537" height="3" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="527">&nbsp;</td>
        </tr>
      </table>
      <p align="center" class="style3">珍視明滴眼液訊息</p>
       <p align="center"><span class="style7">產地</span>：
         <input name="productarea" type="text" id="productarea" value="<%=productarea%>">
          <span class="style7">規格</span>：<input name="standard" type="text" id="standard2" value="<%=standards%>"></p>
         <p align="center"> <span class="style7">包裝</span></span>：<input name="casing" type="text" id="casing2" value="<%=casings%>">
           <span class="style7">價格</span>：<input name="price" type="text" id="price2" value="<%=price1%>"></p>
             <p align="left"><span class="style7">詳細介紹</span>：<input name="introduce" type="text" id="introduce2" size="60" value="<%=introduction%>"></p>
             <p align="center">&nbsp;&nbsp;&nbsp;
             <p align="center"><img src="images/foot.gif" width="16" height="15"> 
             <p align="center">&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/foot.gif" width="17" height="15">               
            <p align="center"><img src="images/foot.gif" width="17" height="15"></td>
    </tr>
   </table>
  </form>
   <img src="images/foot.gif" width="16" height="15"></p></td>
</tr>
</table>
</body>
<br>

</html>
