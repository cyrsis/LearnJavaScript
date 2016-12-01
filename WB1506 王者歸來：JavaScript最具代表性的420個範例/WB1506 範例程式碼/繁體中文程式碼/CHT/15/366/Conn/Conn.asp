<%
set conn=Server.CreateObject("ADODB.Connection")
'sql="Driver={Microsoft Access Driver (*.mdb)};DBQ=" & Server.mappath("database/db_vbdictionary.mdb")
sql="provider=microsoft.jet.oledb.4.0;data source="& Server.mappath("database/db_vbdictionary.mdb")
conn.open(sql)
%>