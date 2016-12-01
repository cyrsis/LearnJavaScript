<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*"%>
<jsp:useBean id="conn" scope="page" class="com.core.ConnDB"/>
<%
request.setCharacterEncoding("GBK");
String producer=request.getParameter("str");
String sql="";
String title="";
if(producer==null){
  producer="";
  title="全部庫存訊息";
  sql="SELECT * FROM tb_storage ORDER BY kcsl desc";
}else{
	  title="生產廠商中包括[ "+producer+" ]的商品的庫存訊息";
	sql="SELECT * FROM tb_storage where producer like '%"+producer+"%' ORDER BY kcsl desc";
}
ResultSet rs=conn.executeQuery(sql);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>將查詢結果匯出到Word</title>
<link href="CSS/style.css" rel="stylesheet"/>
<script language="javascript">
function outDoc(){
  var table=document.all.storage;
  row=table.rows.length;
  column=table.rows(1).cells.length;
  var wdapp=new ActiveXObject("Word.Application");
  wdapp.visible=true;
  wddoc=wdapp.Documents.Add();  //加入新的文件
  thearray=new Array();
//將頁面中表格的內容存放在陣列中
for(i=0;i<row;i++){
	thearray[i]=new Array();
	for(j=0;j<column;j++){
          thearray[i][j]=table.rows(i).cells(j).innerHTML;
	}
}
var range = wddoc.Range(0,0);
range.Text="<%=title%>"+"\n";
wdapp.Application.Activedocument.Paragraphs.Add(range);
wdapp.Application.Activedocument.Paragraphs.Add();
rngcurrent=wdapp.Application.Activedocument.Paragraphs(3).Range;

var objTable=wddoc.Tables.Add(rngcurrent,row,column)     //插入表格
for(i=0;i<row;i++){
	for(j=0;j<column;j++){
	objTable.Cell(i+1,j+1).Range.Text = thearray[i][j].replace("&nbsp;","");
	}
}
wdapp=null;
}
</script>
</head>
<body>
<table width="626" height="68" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="62" background="Images/bg.gif"><table width="100%" height="58" border="0" cellpadding="0" cellspacing="0">
	<form name="form1" method="post" action="index.jsp">
      <tr>
        <td width="33%" height="35">&nbsp;</td>
        <td width="67%" valign="bottom">
          <input name="str" type="text" id="str" size="40" value="<%=producer%>">
          <input name="Submit" type="submit" class="btn_grey" value="查詢"></td>
      </tr>
       </form>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="626"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="5%">&nbsp;</td>
    <td width="95%" align="left" valign="top">
	<table id="storage" width="98%" border="1" cellpadding="0" cellspacing="0" bgcolor="#000000" bordercolor="#00000" bordercolordark="#000000" bordercolorlight="#FFFFFF">
      <tr>
        <td width="35" height="27" align="center" bgcolor="#efefef">編號</td>
        <td width="140" align="center" bgcolor="#efefef">商品名稱</td>
        <td width="103" align="center" bgcolor="#efefef">生產廠商</td>
        <td width="82" align="center" bgcolor="#efefef">規格</td>
        <td width="61" align="center" bgcolor="#efefef">計量單位</td>
        <td width="75" align="center" bgcolor="#efefef">單價</td>
        <td width="65" align="center" bgcolor="#efefef">庫存數量</td>
      </tr>
      <%
  int i=1;
  String spname="";
  String cd="";
  String gg="";
  String dw="";
  float dj=0f;
  int kcsl=0;
try{
  while(rs.next()){
    spname=rs.getString(2);
    cd=rs.getString(3);
    gg=rs.getString(4);
    dw=rs.getString(5);
    dj=rs.getFloat(6);
    kcsl=rs.getInt(7);
    %>
    <tr>
      <td height="25" align="center" bgcolor="#FFFFFF"><%=i%></td>
      <td align="center" bgcolor="#FFFFFF">&nbsp;<%=spname%></td>
      <td align="center" bgcolor="#FFFFFF">&nbsp;<%=cd%></td>
      <td align="center" bgcolor="#FFFFFF">&nbsp;<%=gg%></td>
      <td align="center" bgcolor="#FFFFFF">&nbsp;<%=dw%></td>
      <td align="center" bgcolor="#FFFFFF">&nbsp;<%=dj%></td>
      <td align="center" bgcolor="#FFFFFF">&nbsp;<%=kcsl%></td>
    </tr>
    <%
	i++;
  }
  %>
  </table>
<%
  }catch(Exception e){
    System.out.println(e.getMessage());
  }
%>
        <table width="98%" height="29" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="right"><a href="#" onClick="outDoc()">匯出到Word</a></td>
          </tr>
        </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>&nbsp;</td>
          </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
