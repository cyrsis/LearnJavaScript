<%
	Dim Conn
	Set Conn = Server.CreateObject("ADODB.Connection")
	sql="Driver={Microsoft Access Driver (*.mdb)};DBQ= "&Server.mappath("Database/db_schoolcomputer.mdb")
    conn.open(sql)
%>