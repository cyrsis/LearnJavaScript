<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="top.asp"-->
<!--#include file="conn/conn.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>寵物網站</title>
<style type="text/css">
<!--
.STYLE1 {	font-size: 10pt;
	font-weight: bold;
	color: #000000;
}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-bottom: 0px;
	background-image:url(images/bg1.gif);
}

.STYLE2 {color: #000000}
-->
</style></head>

<body>
<table width="800" height="627" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="492" valign="top"><table width="100%" height="614" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="188" colspan="2" valign="top"><table width="100%" height="239" border="0" cellpadding="0" cellspacing="0" background="images/bg2.gif">
          <tr>
            <td height="239"><table width="800" height="225" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="226" height="225"><!--#include file="login.asp"-->                </td>
                <td width="574" valign="top"><table width="574" height="234" border="0" align="left" cellpadding="0" cellspacing="0">
                    <tr>
                      <td height="205" align="left" valign="bottom"><%
set rs1=server.CreateObject("adodb.recordset")
sql1="select top 4 * from tb_news order by time1 desc"
rs1.open sql1,conn,1,3
If(rs1.Eof)Then
	Response.Write("暫無寵物新聞訊息!")
Else
While(Not rs1.Eof)
%>
                          <table width="88%"  border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                              <td height="31" class="STYLE2"><img src="Images/stars.gif" /> <span style="font-size: 9pt">
                                <%
If(Len(rs1("content")) > 25)Then
Response.Write("<a href='#'>"&Server.HTMLEncode(Mid(rs1("content"),1,25))&"....</a>")
%>
                                &nbsp;<%=rs1("time1")%>
                                <%Else
Response.Write("<a href='#'>"&Server.HTMLEncode(rs1("content"))&"</a>")
%>
                                &nbsp;<%=rs1("time1")%>
                                <%
End If
%>
                              </span></td>
                            </tr>
                            <%
rs1.MoveNext
Wend
rs1.close
Set rs1 = Nothing
%>
                            <tr>
                              <td height="20" align="right" valign="bottom"><img src="Images/more.gif" width="60" height="22" border="0" /></td>
                            </tr>
                          </table>
                        <%end if%>
                        &nbsp; </td>
                    </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td colspan="2" valign="top"><table width="100%" height="559" border="0" cellpadding="0" cellspacing="0" background="images/center.gif">
          <tr>
            <td valign="top"><table width="763" height="556" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="28" height="231">&nbsp;</td>
                <td width="550" valign="bottom"><!--#include file="bestnew.asp"--></td>
                <td width="185" valign="middle"><table width="128" height="58" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><table width="168" height="53" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="150"><marquee direction="up" onMouseOver="this.stop()" onMouseOut="this.start()" scrollamount="3" height="126">
                          &nbsp;
                          <%
set rs=server.CreateObject("adodb.recordset")
sql="select top 5 * from tb_bestnew order by time1 desc"
rs.open sql,conn,1,3
If(rs.Eof)Then
	Response.Write("暫無最新動態訊息!")
Else
While(Not rs.Eof)
%>
                          <table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                              <td height="31" class="STYLE2"><img src="Images/stars.gif" /> <span style="font-size: 9pt">
                                <%
If(Len(rs("title")) > 7)Then
Response.Write("<a href='#'>"&Server.HTMLEncode(Mid(rs("title"),1,7))&"....</a>")
Else
Response.Write("<a href='#'>"&Server.HTMLEncode(rs("title"))&"</a>")
End If
%>
                              </span></td>
                            </tr>
                            <%
rs.MoveNext
Wend
rs.close
Set rs = Nothing
%>
                            <tr>
                              <td height="20" align="right" valign="bottom"><img src="Images/more.gif" width="60" height="22" border="0" /></td>
                            </tr>
                          </table>
                          <%end if%>
                          </marquee>                        </td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td height="302">&nbsp;</td>
                <td height="302"><!--#include file="tejia.asp"--></td>
                <td><table width="166" height="115" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><!--#include file="Ballot.asp"--></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
        </tr>
      
</table></td>
  </tr>
</table>
</body>
</html>
<!--#include file="bottom.asp"-->