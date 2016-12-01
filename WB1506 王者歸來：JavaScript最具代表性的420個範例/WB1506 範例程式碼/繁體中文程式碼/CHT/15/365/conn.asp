<%
dim path,conn,ConnStr,rs
	Set conn = Server.CreateObject("ADODB.Connection")
	ConnStr = "Driver={Microsoft Access Driver (*.mdb)};DBQ="&server.MapPath("database/db.mdb")
	conn.Open ConnStr
	Set rs=Server.CreateObject("ADODB.RecordSet")
%> 