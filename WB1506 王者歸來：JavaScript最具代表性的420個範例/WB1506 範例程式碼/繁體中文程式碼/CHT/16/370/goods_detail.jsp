<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.ConnDB" %>
<%
ConnDB conn=new ConnDB();
int ID=-1;
ID=Integer.parseInt(request.getParameter("ID"));
if(ID>0){
	ResultSet rs=conn.executeQuery("select ID,GoodsName,Introduce,nowprice,picture from tb_goods1 where ID="+ID);
	int goodsID=-1;
	String goodsName="";
	String introduce="";
	float nowprice=(float)0.0;
	String picture="";
        try{
          if(rs.next()){
            goodsID=rs.getInt(1);
            goodsName=rs.getString(2);
            introduce=rs.getString(3);
            nowprice=rs.getFloat(4);
            picture=rs.getString(5);
          }
        }catch(Exception e){
          System.out.println(e.getMessage());
        }
%>
<html>
<head>
<title>開啟指定大小的新視窗並置中顯示</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="CSS/style.css" rel="stylesheet">
</head>
<body>
<table  border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
  <td>
    <table width="587" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="587" align="center" valign="top"><table width="100%" height="68"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="587" height="68" valign="top" background="images/manage_goodsdetail.gif"></td>
      </tr>
    </table>
      <table width="587" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td valign="top">

<table width="98%" height="79"  border="0" cellpadding="0" cellspacing="0" class="noborder">
                    <tr>
                      <td width="37%" height="95" rowspan="4" align="center"><img src="images/goods/<%=picture%>" width="184" height="119"></td>
                      <td width="63%"><%=goodsName%></td>
                    </tr>
                    <tr>
                      <td>單價：<%=nowprice%>(元) </td>
                    </tr>
                    <tr>
                      <td><%=introduce%></td>
                    </tr>
                    <tr>
                      <td><input name="Button" type="button" class="btn_grey" onClick="window.close();" value="關閉">
&nbsp;					  &nbsp;
						 <input name="see" type="button" class="btn_grey" value="購買">
					  </td>
                    </tr>
                  </table>		  </td>
        </tr>
      </table>

      <table width="100%" height="46"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="587" background="images/manage_06.gif">&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</td>
</tr>
</table>
</body>
</html>
<%conn.close();
}else{
	out.println("<script lanage='javascript'>alert('您的動作有誤');window.location.href='index.jsp';");
}%>
