<%@ page contentType="text/html; charset=utf-8" import="java.sql.*" %>
<%@ page import="com.ConnDB"%>
<%
ConnDB conn=new ConnDB();
ResultSet rs=conn.executeQuery("select * from tb_goods order by INTime Desc");
%>
<html>
<head>
<title>關閉出現視窗時更新父視窗</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="style.css" rel="stylesheet">
</head>
<body>
<table width="777" height="172"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="777"  border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><img src="Images/tiring-room/tiring-room_01.gif" width="777" height="125"></td>
      </tr>
      <tr>
        <td height="47" valign="top" background="Images/tiring-room/tiring-room_02.gif"><table width="100%" height="34"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="34" align="center" class="orange"><a href="#">銷售登記</a> |<a href="#" >銷售查詢</a> | <a href="#" class="shadow">銷售排行</a> | <a href="#">使用者管理</a> | <a href="#">公告管理</a> | <a href="#">產品管理</a> | <a href="#">留言管理</a> | <a href="#">商品管理</a> | <a href="#">傳回首頁</a></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="777"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="44" height="249" valign="top"><img src="Images/tiring-room/tiring-room_03.gif" width="44" height="248"></td>
    <td valign="top"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="68" colspan="2" background="Images/tiring-room/h_goods.gif">&nbsp;</td>
      </tr>
      <tr>
        <td width="4%">&nbsp;</td>
        <td width="96%"><table width="95%" height="48"  border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#FFFFFF" bordercolorlight="#DDDDDD">
              <tr bgcolor="#eeeeee">
                <td width="28%" height="24" align="center">商品名稱</td>
                <td width="15%" align="center">所屬類別別</td>				
                <td width="37%" align="center">簡介</td>
                <td width="11%" align="center">是否新品</td>
                <td width="9%" align="center">是否特價</td>
              </tr>
<%

String goodsName="";
String typeName="";
String introduce="";
String newgoods="";
String sale="";
try{
while(rs.next()){
	  typeName=rs.getString("typeName");
	  goodsName=rs.getString("goodsName");
	  introduce=rs.getString("introduce");
	  newgoods=rs.getInt("newgoods")==0 ? "否":"是";
	  sale=rs.getInt("sale")==0 ? "否":"是";
	  %>

              <tr style="padding:5px;">
                <td height="20" align="center"><%=goodsName%></td>
                <td align="center"><%=typeName%></td>				
                <td align="center"><%=introduce%></td>
                <td align="center"><%=newgoods%></td>
                <td align="center"><%=sale%></td>
              </tr>
<%
}
		}catch(Exception e){}
%>
            </table></td>
      </tr>
    </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="95%" height="43" align="right"><a href="#" onClick="window.open('goods_add.jsp','','width=560,height=360')">加入商品訊息</a></td>
          <td width="5%">&nbsp;</td>
        </tr>
      </table></td>
    <td width="35" valign="top"><img src="Images/tiring-room/tiring-room_05.gif" width="35" height="248"></td>
  </tr>
</table>
<table width="777"  border="0" align="center" cellpadding="0" cellspacing="0" class="tab_T">
  <tr>
    <td width="790" height="62"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="21" align="center">本站請使用IE6.0或以上版本 1024*768為最佳顯示效果</td>
      </tr>
      <tr>
        <td height="21" align="center">CopyRight &copy; 2007 吉林省明日科技有限公司</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="7" bgcolor="#666666"></td>
  </tr>
</table>
</body>
</html>
