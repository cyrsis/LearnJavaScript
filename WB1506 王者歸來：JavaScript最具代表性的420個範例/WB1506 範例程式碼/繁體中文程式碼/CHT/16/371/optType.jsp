<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="chStr" scope="page" class="com.ChStr"/>
<jsp:useBean id="conn" scope="page" class="com.ConnDB"/>
<%
ResultSet rs=conn.executeQuery("select * from tb_type order by typeName Desc");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>出現網頁械交談視窗</title>
<link href="css/style.css" rel="stylesheet" />
</head>

<body>
<table width="363" height="73" border="0" align="center" cellpadding="0" cellspacing="0" background="images/son_bg.jpg">
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
<table width="363" height="35" border="0" align="center" cellpadding="0" cellspacing="0">
	<%try{
        while(rs.next()){
		  if(rs.getRow()%2==1){
		  %>
		  <script language="javascript">
		  function action(typename){
		  	parent.window.returnValue=typename;
			window.close();
		  }
		  </script>
          <tr>
            <td height="25" align="center" valign="top"><a href="#" onClick="action('<%=rs.getString("TypeName")%>')"><%=rs.getString("TypeName")%></a></td>
			<%}else{%>
			<td height="25" align="center" valign="top"><a href="#" onClick="action('<%=rs.getString("TypeName")%>')"><%=rs.getString("TypeName")%></a></td>
          </tr>
		  <%
		  }
		  }
	}catch(Exception e){
          System.out.println(e.getMessage());
        }%>
</table>
</body>
</html>
