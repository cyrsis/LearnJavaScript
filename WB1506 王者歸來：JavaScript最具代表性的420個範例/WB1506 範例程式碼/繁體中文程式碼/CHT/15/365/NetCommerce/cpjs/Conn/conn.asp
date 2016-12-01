<%
set conn=server.CreateObject("ADODB.Connection")
sql="Driver={Microsoft Access Driver (*.mdb)};DBQ="&_
 Server.MapPath("Database/cpjs.mdb")
conn.open(sql)
%>
