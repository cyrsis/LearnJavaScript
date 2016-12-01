<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<jsp:useBean id="goods" scope="page" class="com.Goods">
<jsp:setProperty name="goods" property="*"/>
</jsp:useBean>
<jsp:useBean id="chStr" scope="page" class="com.ChStr"/>
<jsp:useBean id="conn" scope="page" class="com.ConnDB"/>
<jsp:useBean id="goodsDao" scope="page" class="com.GoodsDao"/>
<jsp:useBean id="popDialog" scope="page" class="com.PopDialog"/>
<%
String goodsName=chStr.chStr(goods.getGoodsName());
ResultSet rs=conn.executeQuery("select * from tb_goods where goodsname='"+goodsName+"'");
try{
  if (rs.next()){
    out.println(popDialog.messageBox("該商品訊息已經加入！","goods_add.jsp"));
  }else{
    int ret=0;
    ret=goodsDao.insert(goods);
    if (ret!=0){
	%>
		<script language="javascript">
		alert("商品訊息加入成功！");
		window.opener.location.reload();//更新父視窗
		window.close();   //關閉目前視窗
		</script>	
    <%
    }else{
      out.println(popDialog.messageBox("商品訊息加入失敗！","goods_add.jsp"));
    }
  }
}catch(Exception e){
  System.out.println(e.getMessage());
}
%>
