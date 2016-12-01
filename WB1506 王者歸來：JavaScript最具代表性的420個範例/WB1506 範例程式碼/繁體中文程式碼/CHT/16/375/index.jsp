<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.ConnDB" %>
<%
ConnDB conn=new ConnDB();
String sql="";
sql="select * from tb_goods1";
ResultSet rs_search=conn.executeQuery(sql);
int goodsID=-1;
String goodsName="";
String introduce="";
%>
<html>
<head>
<title>使用XML實現不更新頁面查詢資料</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="CSS/style.css" rel="stylesheet">
</head>
<body onLoad="javascript:Mycheck()">
<%//透過以下程式碼實現將資料庫中的訊息存放到資料島中%>
<xml id="xmldao">
<goods>
<%
try{
while(rs_search.next()){
	goodsID=rs_search.getInt("ID");
	goodsName=rs_search.getString("goodsName");
	%>
<goodsID emid="<%=goodsID%>">
<goodsName> <%=goodsName%> </goodsName >
</goodsID>
<%}
}catch(Exception e){System.out.println(e.getMessage());}%>
</goods>
</xml>
<%conn.close();%>	
<table width="610" height="236"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top"><table width="100%"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="7" colspan="3" background="images/shop_12.gif"></td>
        </tr>
      <tr>
        <td width="93" height="50" background="images/shop_15.gif">&nbsp;</td>
        <td colspan="2" valign="top" background="images/shop_16.gif">
		<form name="form2" method="post" action="">
<table width="100%" height="23"  border="0" cellpadding="0" cellspacing="0">
<tr>
  <td colspan="2" height="7"></td>
  </tr>
<tr>
  <td width="85%">請輸入查詢條件：

	<input name="key" type="text" class="txt_grey" size="33">                  </td>
  <td width="15%"><input name="search" type="button" class="btn_grey" value="搜尋" onClick="javascript:Mycheck1()"></td>
</tr>
</table>
</form>		</td>
      </tr>
    </table>
      <table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="80" background="images/center_searchresult.gif">&nbsp;</td>
        </tr>
        <tr valign="top">
          <td height="70" align="center"><select name="result" size="1" style="width:400pt">
            </select></td>
        </tr>
        <tr>
          <td height="38" align="right" background="images/center02.gif"><br>
                <br>
          </td>
        </tr>
      </table></td>
  </tr>
</table>
<Script Language="JavaScript">
function Mycheck(){
	var Emid,Emname;
	firstElement=xmldao.childNodes.item(0);//用於傳回第一個元素
	for(i=0;i<firstElement.childNodes.length;i++){
		prevailnode=firstElement.childNodes(i);
		Emid=firstElement.childNodes(i).getAttribute("emid");
		for(j=0;j<prevailnode.childNodes.length;j++){
			DD=prevailnode.childNodes(j).nodeName;
			if(DD=="goodsName"){
				Emname=prevailnode.childNodes(j).text;
			}
		}
		//所符合條件的訊息寫進select中
		if(Emid!="" && Emname!=""){
			op=document.createElement("option");
			op.text=Emname;
			op.value=Emid;
			result.add(op);
		}
	}
}

//從資料島中檢索資料，並將其裝入到清單框中
function Mycheck1(){
	var Emname,Emid;
	Emname="";
	Emid="";
	text0=form2.key.value;
	//清除清單框
	count0=result.length
	for(i=count0-1;i>=0;i--){
		result.remove(i);
	}
	firstElement=xmldao.childNodes(0);
	for(i=0;i<firstElement.childNodes.length;i++){
		prevailitem=firstElement.childNodes(i);
		Emid=firstElement.childNodes(i).getAttribute("emid");
		for(j=0;j<prevailitem.childNodes.length;j++){
			if(prevailitem.childNodes(j).nodeName=="goodsName"){
				ep=prevailitem.childNodes(j).text;
			}
			//查詢相比對的項
			if(ep.indexOf(text0)!=-1){
				Emname=ep;
			}
			if(Emid!="" && Emname!=""){
				op=document.createElement("option");
				op.value=Emid;
				op.text=Emname;
				result.add(op);
				Emid="";
				Emname="";
			}
		}
	}
}
</script>
</body>
</html>
