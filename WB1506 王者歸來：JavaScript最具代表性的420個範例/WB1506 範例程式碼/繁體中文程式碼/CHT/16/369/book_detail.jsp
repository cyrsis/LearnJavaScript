<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="conn" scope="page" class="com.ConnDB"/>
<jsp:useBean id="chStr" scope="page" class="com.ChStr"/>
<%
if (request.getParameter("ISBN")!=null){
	String ISBN=request.getParameter("ISBN");
	ResultSet rs=conn.executeQuery("select * from tb_bookinfo where ISBN='"+ISBN+"'");
	String bookname="";
	String Type="";
	String TPI="";
	String author="";
	String intro="";
	String pDate="";
	String cover="";
	float price=0;
	String commend="";
	String newbook="";
        try{
          if(!rs.next()){
            out.println("<script lanuage='javascript'>alert('您的動作有誤!');window.location.href='inde.jsp';</script>");
          }else{
            bookname=rs.getString("bookname");
            Type=rs.getString("Type");
            TPI=rs.getString("publisher");
            author=rs.getString("writer");
            intro=rs.getString("introduce");
            price=rs.getFloat("Price");
            pDate=rs.getString("pDate");
            cover=rs.getString("cover");
            newbook=rs.getInt("newbook")==0 ? "否":"是";
            commend=rs.getInt("commend")==0 ? "否":"是";
          }
        }catch(Exception e){
          System.out.println(e.getMessage());
        }
%>
<html>
<head>
<title>開啟新視窗顯示詳細訊息</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="CSS/style.css" rel="stylesheet">
<script src="JS/check.jsp"></script>
</head>

<body>
<table width="560" height="361"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td height="361" valign="top">
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="100%" height="6" bgcolor="#81CF00"></td>
      </tr>
    </table>
	<table width="100%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="30" align="center" bgcolor="#ECF2DF" class="word_orange">≡≡≡ 圖書詳細訊息 ≡≡≡</td>
      </tr>
    </table>
	<table width="100%" height="324"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td height="323" valign="bottom"><table width="100%" height="56"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td align="center">&nbsp;</td>
              </tr>
            <tr>
              <td align="center">
                <table width="100%"  border="1" align="center" cellpadding="0" cellspacing="0" bordercolordark="#FFFFFF">
                  <tr>
                    <td width="14%" height="27">&nbsp;書　　號：</td>
                      <td height="27">&nbsp; <%=ISBN%></td>
                      <td height="27">&nbsp;書　　名：</td>
                      <td height="27">&nbsp;<%=bookname%>                    </td>
                    </tr>
                  <tr>
                    <td height="27">&nbsp;作　　者：</td>
                      <td width="28%" height="27">&nbsp;<%=author%>                    </td>
                      <td width="14%" height="27"> &nbsp;類別別名稱：</td>
                      <td width="44%" height="27">&nbsp;<%=Type%>                    </td>
                    </tr>
                  <tr>
                    <td height="27">&nbsp;出&nbsp;版&nbsp;社：</td>
                      <td height="27">&nbsp;<%=TPI%>                    </td>
                      <td height="27">&nbsp;發行日期：</td>
                      <td height="27">&nbsp;<%=pDate%>                   </td>
                    </tr>
                  <tr>
                    <td height="41">&nbsp;封面檔案：</td>
                      <td height="41">&nbsp;<%=cover%>                    </td>
                      <td height="41">&nbsp;價　　格：</td>
                      <td height="41">&nbsp;<%=price%>
                      (元)</td>
                    </tr>
                  <tr>
                    <td height="45">&nbsp;是否推薦：</td>
                      <td>&nbsp;<%=commend%></td>
                      <td>&nbsp;是否新書：</td>
                      <td><%=newbook%></td>
                    </tr>
                  <tr>
                    <td height="103">&nbsp;圖書簡介：</td>
                      <td colspan="3"><%=chStr.convertStr(intro)%></td>
                    </tr>
                </table></td>
              </tr>
          </table>
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td height="30" align="center" ><input name="Submit3" type="button" class="btn_grey" value="關閉" onClick="window.close();"></td>
              </tr>			
              <tr>
                <td height="5" bgcolor="#81CF00"></td>
              </tr>
            </table></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</body>
</html>
<%
conn.close();
}else{
	out.println("<script lanuage='javascript'>alert('您的動作有誤!');window.location.href='inde.jsp';</script>");
}%>
