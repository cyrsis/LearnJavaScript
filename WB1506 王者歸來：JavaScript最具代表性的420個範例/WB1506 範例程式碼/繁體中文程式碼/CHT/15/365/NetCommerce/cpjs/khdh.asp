<%@LANGUAGE="VBSCRIPT"%> 
<!--#include file="../../Connections/cpjs.asp" -->
<!--#include file="Fun_JS.asp"-->
<%
if request.Form("cp2")<>"" then
cp2=request.Form("cp2")
kh2=request.Form("kh2")
cd2=request.Form("cd2")
gg2=request.Form("gg2")
dw2=request.Form("dw2")
dj2=request.Form("dj2")
sl2=request.Form("sl2")
je2=request.Form("je2")
date2=request.Form("date2")
memo2=request.Form("memo2")
Ins="Insert into khdd (cpname,khname,cd,gg,dw,dj,sl,je,dhdate,memo) values('"&cp2&"','"&_
kh2&"','"&cd2&"','"&gg2&"','"&dw2&"',"&dj2&","&sl2&","&je2&",'"&date2&"','"&memo2&"')"
conn.execute(Ins)%>
<script language="javascript">
alert("客戶訂貨成功！");
</script>
<%
end if
%>
<%
set rscpname = Server.CreateObject("ADODB.Recordset")
sql_Q= "SELECT * FROM cpinfo ORDER BY ID ASC"
rscpname.open sql_Q,conn,1,3
%>
<html><!-- #BeginTemplate "/Templates/navigation.dwt" --><!-- DW6 -->
<head>
<!-- #BeginEditable "doctitle" --> 
<title>企業網上交流平台--客戶訂貨!</title>
<!-- #EndEditable --> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
<!--
td           { font-size: 9pt;font_name:宋體;; line-height: 16pt}
a:hover      { color: #ff0000; text-decoration: underline; font-size: 9pt }
a            { font-size: 9pt; color: #FFFFFF; text-decoration: none }
p {  font-size: 9pt; font-family: "宋體"; line-height: 11pt}
.l {  font-size: 9pt; color: #0000FF}
-->
</style>
</head>
<body bgcolor="#FFFFFF" text="#000000" background="../../images/bg.gif">
<table width="777" border="0" cellspacing="-2" cellpadding="-2" height="67">
  <tr> 
    <td width="196"> 
      <div align="center"><img src="../../images/mrbiao.gif" width="144" height="65"> 
      </div>
    </td>
    <td background="../../images/clock_1.gif" width="581"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="578" height="66">
      <param name="movie" value="../../images/flash/mrsoft.swf">
      <param name="quality" value="high">
      <param name="wmode" value="transparent">
      <embed src="../../images/flash/mrsoft.swf" width="578" height="66" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent"></embed>
    </object></td>
  </tr>
</table>
<table width="777" border="0" cellspacing="-2" cellpadding="-2" height="25" background="../../images/dht.gif">
  <tr> 
    <td height="2"> 
      <div align="center"> 
        <script language=JavaScript>
<!-- Begin
   var enable=0; today=new Date();
   var day; var date;
   var time_start = new Date();
   var clock_start = time_start.getTime();

   if(today.getDay()==0)  day="星期日"
   if(today.getDay()==1)  day="星期一"
   if(today.getDay()==2)  day="星期二"
   if(today.getDay()==3)  day="星期三"
   if(today.getDay()==4)  day="星期四"
   if(today.getDay()==5)  day="星期五"
   if(today.getDay()==6)  day="星期六"
   date=(today.getYear())+"年"+(today.getMonth()+1)+"月"+today.getDate()+"日 ";

document.write("<span style='font-size: 9pt;color:#0000ff;'>"+date);
document.write(day+"</font></span>");
// -->
</script>
      </div>
    </td>
    <td width="120" background="../../images/dht_1.gif" height="2"> 
      <div align="center"><a href="../.././default.asp" target="_self">首頁</a></div>
    </td>
    <td width="120" height="2" background="../../images/dht_2.gif"> 
      <div align="center"><a href="../.././accessdatabase/qyjj/qyjj.asp" target="_self">企業介紹</a></div>
    </td>
    <td width="120" height="2" background="../../images/dht_2.gif"> 
      <div align="center"><font color="#FF9900"><a href="cpjsindex.htm" target="_self">產品介紹</a></font></div>
    </td>
    <td width="120" height="2" background="../../images/dht_2.gif"> 
      <div align="center"><a href="../fwzc/fwzclogin.asp" target="_self">服務支援</a></div>
    </td>
    <td width="120" height="2" background="../../images/dht_2.gif"> 
      <div align="center"><font color="#FF6600"><a href="../../contact.htm">與我聯繫</a></font></div>
    </td>
  </tr>
</table>
  <!-- #BeginEditable "center" --> 
<script language="Javascript">
function funreset(){
 form1.reset();
}
</script>
<script language="javascript">
<!--  檢驗輸入的有效性
function checkinput()
{
  if (form1.khname1.value=="")
	{alert("請輸入訂貨單位名稱！");form1.khname1.focus();return}
  if (form1.cp.value=="")
	{alert("請選取訂貨產品名稱！");form1.cpname.focus();return}
  if (form1.sl.value==0)
    { alert("請輸入數量！");form1.sl.focus();return;}
  if(isNaN(form1.sl.value))
	{alert("您輸入的不是有效值（請輸入0-9之間的數）！");form1.sl.focus();return;}  
  if (form1.je.value==0)
    { alert("請輸入金額！");form1.je.focus();return;}
     if(isNaN(form1.je.value))
          {alert("您輸入的不是有效值（請輸入0-9之間的數）！");form1.je.focus();return;}
  if (form1.dj.value==0)
    { alert("請輸入單價！");form1.dj.focus();return;}
  if(isNaN(form1.dj.value))
    {alert("您輸入的不是有效值（請輸入0-9之間的數）！");form1.dj.focus();return;}
  if (form1.date1.value=="")
    {alert("請輸入日期！");form1.date1.focus();return;}
  if(CheckDate(form1.date1.value))
    {alert("請輸入標准日期（如：2004/05/27或2004-05-27）");form1.date1.focus();return;}
	form2.cp2.value=form1.cp.value;
	form2.kh2.value=form1.khname1.value;
	form2.cd2.value=form1.cd.value;
	form2.gg2.value=form1.gg.value;
	form2.dw2.value=form1.dw.value;
	form2.dj2.value=form1.dj.value;
	form2.sl2.value=form1.sl.value;
	form2.je2.value=form1.je.value;
	form2.date2.value=form1.date1.value
	form2.memo2.value=form1.memo.value
  form2.submit(); }  //傳送表單
//-->
</script>
<Script language="javascript">
function changecp(){
form1.submit();}
</script>
<Script language="Javascript">
function autoje(){
form1.je.value=form1.dj.value*form1.sl.value;}//實現自動計算金額
</script>
<%
rscpname.movefirst
Dim varno   '定義變數
if (Request.Form("cpname") = 0) then
varno =rscpname.Fields("ID").Value
else 
varno = Request.Form("cpname") '將控制項的值賦予變數
end if
%>
<%
strsql="select* from cpinfo where ID="& varno
Set rs=conn.Execute(strsql)
%>
<table width="777" border="0" cellspacing="-2" cellpadding="-2" height="172">
  <tr> 
    <td> 
      <table width="600" border="0" cellspacing="-2" cellpadding="-2" align="center" height="34">
        <tr> 
          <td height="44" valign="bottom"> 
            <h2 style="filter:glow(color=#ccccff,strength=5);height:1pt"align="center"><font size="2" color=#000099> 
              <br>
              客戶訂貨單</font></h2>
            <hr size="0.5" color="#CCCCFF">
          </td>
        </tr>
      </table>
      <form name="form1" method="post" action="./khdh.asp">
        <table width="500" border="0" cellspacing="-2" cellpadding="-2" align="center">
          <tr> 
            <td height="46" width="100"><font color="#990000">請選取產品名稱：</font></td>
            <td height="46" width="400" valign="middle"> 
              <select name="cpname" onChange="changecp()">
                <option value="0" selected>請選取產品名稱：</option>
                <%
While (NOT rscpname.EOF)
%>
                <option value="<%=rscpname("ID")%>" ><%=rscpname("cpname")%></option>
                <%
  rscpname.MoveNext()
Wend
%>
              </select>
              <font color="#336699">　　注：帶*號項為必填項。</font> 
            </td>
          </tr>
          <tr> 
            <td height="27" width="100"> 
              <div align="center">客戶名稱：</div>
            </td>
            <td height="27" width="400"> 
              <input type="text" name="khname1" size="50">
              <font color="#336699"> *</font> </td>
          </tr>
          <tr> 
            <td height="27" width="100"> 
              <div align="center">產品名稱：</div>
            </td>
            <td height="27" width="400"> 
              <input type="text" name="cp" value="<% =rs("cpname")%>" size="50">
              <font color="#336699"> * </font></td>
          </tr>
          <tr> 
            <td height="27" width="100"> 
              <div align="center">產　　地：</div>
            </td>
            <td height="27" width="400"> 
              <input type="text" name="cd" value="<% =rs("cd") %>" size="50">
              <font color="#336699">*</font> </td>
          </tr>
          <tr> 
            <td height="27" width="100"> 
              <div align="center">規　　格：</div>
            </td>
            <td height="27" width="400"> 
              <input type="text" name="gg" value="<% =rs("gg") %>" size="50">
            </td>
          </tr>
          <tr> 
            <td height="27" width="100"> 
              <div align="center">單　　位：</div>
            </td>
            <td height="27" width="400"> 
              <input type="text" name="dw" value="<% =rs("dw") %>" size="50">
            </td>
          </tr>
          <tr> 
            <td height="27" width="100"> 
              <div align="center">單　　價：</div>
            </td>
            <td height="27" width="400"> 
              <input type="text" name="dj" value="<% =rs("dj") %>" size="50" onblur=autoje()>
              <font color="#336699"> *</font> </td>
          </tr>
          <tr> 
            <td height="27" width="100"> 
              <div align="center">數　　量：</div>
            </td>
            <td height="27" width="400"> 
              <input type="text" name="sl" size="50" onblur=autoje() value="0">
              <font color="#336699"> *</font> </td>
          </tr>
          <tr> 
            <td height="27" width="100"> 
              <div align="center">金　　額：</div>
            </td>
            <td height="27" width="400"> 
              <input type="text" name="je" size="50" value="0">
              <font color="#336699"> *</font> </td>
          </tr>
          <tr> 
            <td height="27" width="100"> 
              <div align="center">日　　期：</div>
            </td>
            <td height="27" width="400"> 
              <input type="text" name="date1" value="<%=date()%>" size="17">
              <font color="#336699">日期格式為：yyyy-mm-dd （2003-07-17）。</font></td>
          </tr>
          <tr> 
            <td height="27" width="100"> 
              <div align="center">備　　注：</div>
            </td>
            <td height="27" width="400"> 
              <input type="text" name="memo" value="<% =rs("memo") %>" size="50">
            </td>
          </tr>
        </table>
      </form>
    </td>
  </tr>
</table>
<table width="777" border="0" cellspacing="-2" cellpadding="-2" height="45">
  <tr> 
    <td height="45"> 
      <form METHOD="POST" name="form2" action="khdh.asp">
        <div align="center"> 
          <input type="hidden" name="cp2">
          <input type="hidden" name="kh2">
          <input type="hidden" name="cd2">
          <input type="hidden" name="gg2">
          <input type="hidden" name="dw2">
          <input type="hidden" name="dj2">
          <input type="hidden" name="sl2">
          <input type="hidden" name="je2">
          <input type="hidden" name="date2">
          <input type="hidden" name="memo2">
          <input type="button" name="subbutton" value="傳送" onclick=checkinput()>
          <input type="button" name="Button" value="重設" onclick=funreset()>
        </div>
      </form>
    </td>
  </tr>
</table>
<!-- #EndEditable -->
<table width="777" border="0" cellspacing="-2" cellpadding="-2">
  <tr>
    <td background="../../images/BACK.GIF"> 
      <div align="center">本站請用IE4.0或以上版本瀏覽，800*600為最佳效果 版權所有：長春市明日科技有限責任公司<br>
    Email：<a href="mailto:mingrisoft@sina.com " class="l">mingrisoft@sina.com</a>聯繫電話：0431-4972266 位址：長春市東盛大街89號亞泰廣場C座2205室</div>    </td>
  </tr>
</table>
</body>
<!-- #EndTemplate --></html>