<%
	Set Conn = Server.CreateObject("ADODB.Connection")
	sql="Driver={Microsoft Access Driver (*.mdb)};DBQ= "&Server.mappath("Database/db_pet.mdb")
    conn.open(sql)
%>