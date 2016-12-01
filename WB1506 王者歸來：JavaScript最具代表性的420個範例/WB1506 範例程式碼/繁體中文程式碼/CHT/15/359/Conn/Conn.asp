
<%
	Set Conn = Server.CreateObject("ADODB.Connection")
	sql="Driver={Microsoft Access Driver (*.mdb)};DBQ= "&Server.mappath("Database/db1.mdb")
    conn.open(sql)
%>