<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean class="com.ConnDB" scope="page" id="conn"></jsp:useBean>
<%
request.setCharacterEncoding("utf-8");
String username=request.getParameter("username");
ResultSet rs=conn.executeQuery("select * from tb_user where username='"+username+"'");
if (rs.next()){
	out.println("很報歉!使用者名稱["+username+"]已經被登錄!");
}else{
	out.println("祝賀您!使用者名稱["+username+"]沒有被登錄!");
}
%>
