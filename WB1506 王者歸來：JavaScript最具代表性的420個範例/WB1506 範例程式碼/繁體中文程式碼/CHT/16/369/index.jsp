<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" %>
<jsp:useBean id="conn" scope="page" class="com.ConnDB"/>
<jsp:useBean id="chStr" scope="page" class="com.ChStr"/>
<%
ResultSet rs=conn.executeQuery("select * from tb_bookinfo order by INTime Desc");
%>
<html>
<head>
<title>開啟新視窗顯示詳細訊息</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="CSS/style.css" rel="stylesheet">
<script src="JS/check.jsp"></script>
</head>

<body>
<table width="777" height="440"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td height="440" valign="top">
	<jsp:include page="Top.jsp"/>
	<table width="100%"  border="0" cellspacing="0" cellpadding="0" class="tableBorder_LTR">
      <tr>
        <td height="30" align="center" bgcolor="#eeeeee">≡≡≡ <span class="word_grey"><a href="#">加入圖書訊息</a></span> ≡≡≡</td>
      </tr>
    </table>
	<table width="100%" height="396"  border="0" cellpadding="0" cellspacing="0" class="tableBorder_LBR">
        <tr>
          <td width="26%" height="395" valign="top"><table width="100%"  border="0" cellspacing="-2" cellpadding="-2">
            <tr>
              <td width="55%" height="82" align="center" class="word_grey">&nbsp;<img src="Images/reg.gif" width="84" height="54"></td>
              <td width="45%" align="left" class="word_grey">圖書管理</td>
            </tr>
            <tr>
              <td height="112" colspan="2" valign="top" class="word_grey"><ul>
                <li> 加入圖書訊息：點選“加入圖書訊息”超連結可以進行圖書訊息的加入。<br>
                  <br>
                </li>
                <li>修改圖書訊息：點選每條圖書訊息後面的“修改”按鈕可以修改圖書訊息。<br>
                  <br>
                </li>
                <li>推薦圖書：若果想推薦圖書，可以點擊指定圖書後的“修改”按鈕。<br>
                  <br>
                </li>
                <li>是否新書：若果想將圖書訊息發布到新書上架中，可以點擊指定圖書後的“修改”按鈕。</li>
              </ul></td>
            </tr>
            <tr align="center">
              <td colspan="2" valign="middle" class="word_grey"></td>
            </tr>
          </table></td>
          <td width="5" valign="top" background="Images/Cen_separate.gif"></td>
          <td width="73%" valign="top"><table width="100%" height="14"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="13" align="center">&nbsp;</td>
            </tr>
          </table>
            <table width="100%" height="48"  border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#CCCCCC" bordercolorlight="#FFFFFF">
              <tr>
                <td width="18%" height="27" align="center">
                  書號</td>
                <td width="36%" align="center">名稱</td>
                <td width="20%" align="center">出版社</td>
                <td width="8%" align="center">新書否</td>
                <td width="8%" align="center">推薦否</td>
                <td width="5%" align="center">修改</td>
                </tr>
<%
try{
  String ISBN="";
  String BookName="";
  String publisher="";
  String newbook="";
  String commend="";
	while(rs.next()){
	  ISBN=rs.getString("ISBN");
	  BookName=rs.getString("BookName");
	  publisher=rs.getString("publisher");
	  newbook=rs.getInt("newbook")==0 ? "否":"是";
	  commend=rs.getInt("commend")==0 ? "否":"是";
	  %>

              <tr style="padding:5px;">
                <td height="24" align="center"><%=ISBN%></td>
                <td align="center"><a href="#" onclick="window.open('book_detail.jsp?ISBN=<%=ISBN%>','','width=560,height=361')"><%=BookName%></a></td>
                <td align="center"><%=publisher%></td>
                <td align="center"><%=newbook%></td>
                <td align="center"><%=commend%></td>
                <td align="center"><img src="Images/modify.gif" width="15" height="15"></td>
                </tr>
<%
	}
}catch(Exception e){}
%>
            </table>
          </td>
        </tr>
      </table>
      <jsp:include page="copyright.jsp"/>
    </td>
  </tr>
</table>
</body>
</html>
