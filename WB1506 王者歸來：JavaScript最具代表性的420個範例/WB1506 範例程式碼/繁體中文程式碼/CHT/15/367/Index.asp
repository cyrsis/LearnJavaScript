<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<html>
<head>
<title>使用XML實現不更新頁面查詢資料庫</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
<!--
.STYLE2 {font-size: 9pt}
-->
</style>
</head>
<Script Language="JavaScript">
function Mycheck()
{
var Emid,Emname;
//用於傳回第一個元素
sml=document.all.xmlempy.childNodes.item(0);
for(i=0;i<sml.childNodes.length;i++)
{
   　    prevailnode=sml.childNodes(i);      
          Emid=sml.childNodes(i).getAttribute("emid");     
          for(j=0;j<prevailnode.childNodes.length;j++)
{
DD=prevailnode.childNodes(j).nodeName; 

if(DD=="User_Name")
{
Emname=prevailnode.childNodes(j).text;  
}
}
//所符合條件的訊息寫進select中
if(Emid!="" && Emname!="")
{ 
op=document.createElement("option");
op.text=Emname; 
op.value=Emid; 
menulist.add(op); 
}  
}
}
//從資料島中檢索資料，並將其裝入到清單框中
function Mycheck1()
{
var Emname,Emid;
Emname="";
Emid="";
text0=window.condition.value;
//清除清單框
count0=menulist.length
for(i=count0-1;i>=0;i--)
{
menulist.remove(i); 
}
sml=window.xmlempy.childNodes(0); 
for(i=0;i<sml.childNodes.length;i++)
{
prevailitem=sml.childNodes(i); 
Emid=sml.childNodes(i).getAttribute("emid");
for(j=0;j<prevailitem.childNodes.length;j++)
{
if(prevailitem.childNodes(j).nodeName=="User_Name")
{
ep=prevailitem.childNodes(j).text; 
}
//查詢相比對的項
if(ep.indexOf(text0)!=-1)
{
Emname=ep; 
}
if(Emid!="" && Emname!="")
{
op=document.createElement("option");
op.value=Emid; 
op.text=Emname; 
window.menulist.add(op); 
Emid="";
Emname="";
}
}
}
}
</script>
<body bgcolor="#FFFFFF" text="#000000" onLoad="javascript:Mycheck()">
<table width="498" height="283" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="498" height="283" background="0.jpg"><table width="90%" border="0" align="right" cellpadding="0" cellspacing="0">
      <tr>
        <td> <span class="STYLE2">輸入所要查詢的條件：</span>
          <input name="condition" type="text" id="condition" size="32">
            <input type="button" name="Submit" value="查詢" onClick="javascript:Mycheck1()">
        </td>
      </tr>
      <tr>
        <td class="STYLE2"> 查詢結果顯示：    　　
          <select name="menulist" size="1">
            </select>
        </td>
      </tr>
    </table>
<% 
  '使用以下程式碼連線資料庫，並從資料庫中篩選資料訊息
  Set Conn = Server.CreateObject("ADODB.Connection")
  sql="Driver={Microsoft Access Driver (*.mdb)};DBQ= "&Server.mappath("Database/db_Catecity.mdb")
  conn.open(sql)                           
  set rs=server.CreateObject("adodb.recordset")
  sql="Select User_id,User_Name from tb_User"
  rs.Open sql,conn,1,3
%>
<%'透過以下程式碼實現將資料庫中的訊息存放到資料島中%>
<xml id="xmlempy">
<catecity>
<%
do while not rs.eof
%>
<User_id emid="<%=rs("User_id")%>">
<User_Name> <%=rs("User_Name")%> </User_Name >
</User_id>
<%
rs.movenext
%>
<%
loop
%>
</catecity>
</xml>
<%
rs.close
set rs=nothing
%>
</td>
</tr>
</table>
</body>
</html>