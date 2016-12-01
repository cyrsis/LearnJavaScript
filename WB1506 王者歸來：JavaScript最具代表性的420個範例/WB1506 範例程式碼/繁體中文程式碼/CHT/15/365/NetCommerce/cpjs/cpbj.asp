<%@LANGUAGE="VBSCRIPT"%>
<!--#include file="conn/conn.asp" -->
<%

set rscpbj = Server.CreateObject("ADODB.Recordset")
sql_cpbj= "SELECT cpname, cd, gg, bz, dw, dj, memo FROM cpinfo ORDER BY ID DESC"
rscpbj.open sql_cpbj,conn,1,3
%>
<html><!-- #BeginTemplate "/Templates/navigation.dwt" --><!-- DW6 -->
<head>
<!-- #BeginEditable "doctitle" --> 
<title>企業網上交流平台--產品報價！</title>
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
<body bgcolor="#FFFFFF" text="#000000" background="../images/bg.gif">
<table width="777" border="0" cellspacing="-2" cellpadding="-2" height="67">
  <tr> 
    <td width="196"> 
      <div align="center"><img src="../images/mrbiao.gif" width="144" height="65"> 
      </div>
    </td>
    <td background="../images/clock_1.gif" width="581"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="578" height="66">
      <param name="movie" value="../images/flash/mrsoft.swf">
      <param name="quality" value="high">
      <param name="wmode" value="transparent">
      <embed src="../images/flash/mrsoft.swf" width="578" height="66" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent"></embed>
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
    <td width="120" background="../images/dht_1.gif" height="2"> 
      <div align="center"><a href=".././default.asp" target="_self">首頁</a></div>
    </td>
    <td width="120" height="2" background="../images/dht_2.gif"> 
      <div align="center"><a href=".././accessdatabase/qyjj/qyjj.asp" target="_self">企業介紹</a></div>
    </td>
    <td width="120" height="2" background="../images/dht_2.gif"> 
      <div align="center"><font color="#FF9900"><a href="cpjsindex.htm" target="_self">產品介紹</a></font></div>
    </td>
    <td width="120" height="2" background="../images/dht_2.gif"> 
      <div align="center"><a href="../fwzc/fwzclogin.asp" target="_self">服務支援</a></div>
    </td>
    <td width="120" height="2" background="../images/dht_2.gif"> 
      <div align="center"><font color="#FF6600"><a href="../contact.htm">與我聯繫</a></font></div>
    </td>
  </tr>
</table>
  <!-- #BeginEditable "center" --> 
<table width="777" border="0" cellspacing="-2" cellpadding="-2" height="66">
  <tr> 
    <td> 
      <table width="777" border="0" cellspacing="-2" cellpadding="-2">
        <tr> 
          <td> 
            <h2 style="filter:glow(color=#ccccff,strength=5);height:1pt"align="center">
              <font size="2" color=#000099> <br>騰龍醫藥采購中心產品報價<br></font>
            </h2>
          </td>
        </tr>
      </table>
      <table width="777" border="0" cellspacing="-2" cellpadding="-2" height="29">
        <tr> 
          <td> 
	<%if rscpbj.eof then%>
	<table align="center"><tr><td>無產品訊息！</td></tr></table>
	<%else%>
	      　<%'分頁'
		rscpbj.pagesize=4
		page=CLng(Request("page"))
		if page<1 then page=1
		rscpbj.absolutepage=page
		for i=1 to rscpbj.pagesize %>
            <table width="777" border="0" cellspacing="-2" cellpadding="-2" height="30">
              <tr> 
                <td><font color="#FF0000"><b>　<img src="images/light.gif" width="11" height="13">　<font color="#336699"><%=rscpbj("cpname")%></font></b></font> </td>
              </tr>
            </table>
            <table width="770" border=1 bordercolor=#ffffff bordercolordark=#ffffff 
                  bordercolorlight=#0099ff cellpadding=-1 cellspacing=0 height="54" align="center">
              <tr bgcolor="#dddddd"> 
                <td width="189" bgcolor="#D9ECFF"><font color="#336699">產地：<%=rscpbj("cd")%></font></td>
                <td width="162" bgcolor="#D9ECFF"><font color="#336699">規格：<%=rscpbj("gg")%></font></td>
                <td width="154" bgcolor="#D9ECFF"><font color="#336699">包裝：<%=rscpbj("bz")%></font></td>
                <td width="103" bgcolor="#D9ECFF"><font color="#336699">單位：<%=rscpbj("dw")%></font></td>
                <td width="150" bgcolor="#D9ECFF"><font color="#336699">單價：<%=rscpbj("dj")%>（元）</font></td>
              </tr>
              <tr bgcolor="#dddddd"> 
                <td colspan="5" bgcolor="#D9ECFF"><font color="#336699">備注：<%=rscpbj("memo")%></font></td>
              </tr>
            </table>
        <% rscpbj.movenext
		if rscpbj.eof then exit for 
		next %>
            <table width="777" border="0" cellspacing="-2" cellpadding="-2">
              <tr> 
                <td width="278"> 
                  <div align="left"> 
			<% if page<>1 then %><a href=<%=path%>?page=1 class="l">第一頁</a>
				<a href=<%=path%>?page=<%=(page-1)%> class="l">上一頁</a> 
			<%end if
			if page<>rscpbj.pagecount then %>
   			<a href=<%=path%>?page=<%=(page+1)%> class="l">下一頁</a> 
			<a href=<%=path%>?page=<%=rscpbj.pagecount%> class="l">最後一頁</a> 
			<%end if %>
                    　　</div>
                </td>
                <td width="499"> 
                </td>
              </tr>
            </table>
			<%end if %>
          </td>
        </tr>
      </table>
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

