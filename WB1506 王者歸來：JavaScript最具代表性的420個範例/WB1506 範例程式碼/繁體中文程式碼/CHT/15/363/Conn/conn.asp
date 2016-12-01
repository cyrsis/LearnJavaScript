<%
set conn=server.CreateObject("Adodb.Connection")
sql="Driver={Microsoft Access Driver (*.mdb)};DBQ="&server.MapPath("Database/db_office.mdb")
conn.open(sql)
%>
