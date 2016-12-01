<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="conn/conn.asp"-->
<%
Set rs1=Server.CreateObject("ADODB.Recordset")
sql1="select * from tb_class order by class_data desc"
rs1.open sql1 ,conn,1,3
%>
<%
if request.querystring("id")<>"" then
user_id=request.querystring("user_id")
end if
Set rs3=Server.CreateObject("adodb.recordset")
sql3="select * from tb_user order by user_data desc"
rs3.open sql3,conn,1,3
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>加入詳細訊息頁面</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-bottom: 0px;
}
.STYLE2 {font-size: 10pt; color: #000000; }
.STYLE4 {
	font-size: 9pt;
	color: #FFFFFF;
}
.style7 {	font-size: 9pt;
	color: #0c5c95;
}
.style7 {color: #000000; font-size: 9pt; }
.style9 {
	font-size: 10pt;
	color: #FF0000;
}
a:link {
	color: #FF0000;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #FF0000;
}
a:hover {
	text-decoration: none;
	color: #FF0000;
}
a:active {
	text-decoration: none;
	color: #FF0000;
}
-->
</style></head>
<script language="javascript">
function checkemail(email)
{
var str=email;
//在JavaScript中，正規表示法只能使用"/"開頭和結束，不能使用雙引號
var Expression=/\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
var objExp=new RegExp(Expression);
if(objExp.test(str)==true)
{return true;}
else
{return false;}
}
</script>
<script language="javascript">
function Mycheck()
{
if(form1.name11.value=="")
{alert("請輸入姓名!!");form1.name11.focus();return;}
if(form1.birthday.value=="")
{alert("出生日期不能為空!!");form1.birthday.focus();return;}
if(form1.sex.value=="")
{alert("請選取性別!!");form1.sex.focus();return;}
if(form1.hy.value=="")
{alert("請選取婚姻狀況!!");form1.hy.focus();return;}
if(form1.dw.value=="")
{alert("請輸入所屬單位名稱!!");form1.dw.focus();return;}
if(form1.department.value=="")
{alert("請輸入所屬部門名稱!!");form1.department.focus();return;}
if(form1.zw.value=="")
{alert("請輸入所屬職位!!");form1.zw.focus();return;}
if(form1.sf.value=="")
{alert("請輸入所屬省份名稱!!");form1.sf.focus();return;}
if(form1.cs.value=="")
{alert("請輸入所屬城市名稱!!");form1.cs.focus();return;}
if(form1.phone.value=="")
{alert("請輸入辦公電話!!");form1.phone.focus();return;}
if(form1.phone1.value=="")
{alert("請輸入搬移電話!!");form1.phone1.focus();return;}
if(form1.email.value=="")
{alert("請輸入E-mail!!");form1.email.focus();return;}
if(!checkemail(form1.email.value))
{alert("信箱位址格式不正確，請重新輸入!!");form1.email.focus();return;}
if(form1.postcode.value=="")
{alert("請輸入郵政解碼號!!");form1.postcode.focus();return;}
if(isNaN(form1.postcode.value))
{alert("郵政解碼號必須為數字!!");form1.postcode.focus();return;}
if(form1.family.value=="")
{alert("請輸入家庭電話!!");form1.family.focus();return;}
if(form1.address.value=="")
{alert("請輸入家庭住址!!");form1.address.focus();return;}
form1.submit();
}
</script>
<body>
<table width="801" height="30" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td background="images/title1.gif"><table width="360" border="0">
      <tr>
        <td width="188">&nbsp;</td>
        <td width="162"><span class="STYLE4">同學詳細訊息加入頁面</span></td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="801" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="256" rowspan="2" valign="top"><table width="96%" height="632" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="39" colspan="2"><img src="images/bestclass.gif" width="254" height="39" /></td>
      </tr>
      <tr>
        <td width="12" height="570" background="images/bei4.gif">&nbsp;</td>
        <td width="247" valign="top"><table width="236" height="64" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <%for i=1 to rs1.recordcount
							  %>
            <td width="24"><div align="center"><img src="images/1.gif" width="5" height="7" /></div></td>
            <td width="212" class="style7"><a href="schoolbook_class2.asp?id=<%=rs1("class_id")%>" class="style7"><%=rs1("class_name")%>--<%=rs1("class_specialty")%></a>&nbsp;</td>
          </tr>
          <%
			 rs1.movenext
			  next
		 %>
        </table>
              <table width="236" height="103" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="242" height="35"><img src="images/bestmate.gif" width="242" height="35" /></td>
                </tr>
                <tr>
                  <td height="68"><table width="245" height="63" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <%for i=1 to rs3.recordcount%>
                        <td width="23"><div align="center"><img src="images/1.gif" width="5" height="7" /></div></td>
                        <td width="181" class="style7"><a href="schoolbook_classmate2.asp?user_id=<%=rs3("user_id")%>" class="style7"><%=rs3("user_name")%>--<%=rs3("user_class")%></a>&nbsp;</td>
                      </tr>
                      <%      
					  rs3.movenext
					  next
					 %>
                  </table></td>
                </tr>
              </table>
          <p>&nbsp;</p></td>
      </tr>
    </table></td>
    <td width="546" height="182"><img src="images/shang1.jpg" width="544" height="182" border="0" /></td>
  </tr>
  <tr>
    <td height="420"><table width="546" height="420" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="544" height="420" valign="top"><table width="544" height="420" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="6" height="410" background="images/bei.gif"></td>
            <td width="528" valign="top" background="images/bg.jpg"><table width="489" height="377" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <script language="JavaScript" type="text/javascript">
	function loadCalendar(field)
	{
   var rtn = window.showModalDialog("calender.asp","","dialogWidth:280px;dialogHeight:250px;status:no;help:no;scrolling=no;scrollbars=no");
	if(rtn!=null)
		field.value=rtn;
   return;
}
            </script>
                <td width="489" height="377" valign="top" background="../Images/main.gif"><form action="tongxun_xianxiadd.asp" method="post" name="form1" id="form1">
                      <table width="489" height="377" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="489" height="377" valign="top"><table width="489" height="377" border="0" cellpadding="0" cellspacing="0">
                              <tr>
                                <td width="489" height="377" valign="top"><table width="489" height="46" border="0" cellpadding="0" cellspacing="0">
                                  
                                    <tr>
                                      <td width="96" height="47" rowspan="2" valign="bottom"><div align="right" class="STYLE2"> 選取班級&nbsp;</div></td>
                                      <td width="393" height="23" valign="bottom"><div align="center" class="style9">
                                        <div align="left">*若果沒有您所在的班級請與管理員聯繫![<a href="tongxun_index.asp">傳回</a>]</div>
                                      </div></td>
                                    </tr>
                                    <tr>
                                      <td width="393" height="23" valign="bottom"><%
				set rs1=server.CreateObject("adodb.recordset")
				sql1="select * from tb_tongxun"
				rs1.open sql1,conn,1,3
				session("name1")=session("name1")
				if not rs1.eof then
				max=rs1.recordcount
				%>
                                          <select name="name1" id="ID">
                                            <%
				rs1.movefirst
				while(not rs1.eof)
				%>
                                            <option value="<%=rs1("id")%>"><%=rs1("name1")%></option>
                                            <%
				rs1.movenext()
				wend
				else
				response.Write("<script language=javascript>alert('對不起，您還沒有加入班級');location='javascript:history.go(-1)'</script>")
				end if
				%>
                                        </select></td>
                                      </tr>
                                  </table>
                                    <table width="408" height="350" border="0" align="center" cellpadding="0" cellspacing="0">
                                      <tr>
                                        <td height="28" colspan="4"><table width="102%" height="27" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                              <td width="63" height="21"><div align="center" class="STYLE2">姓　　名</div></td>
                                              <td width="90" class="STYLE1"><input name="name11" type="text" id="name11" onkeydown="if(event.keyCode==13){form1.birthday.focus();}" size="15" /></td>
                                              <td width="62"><div align="center" class="STYLE2">出生日期</div></td>
                                              <td width="144"><input name="birthday" type="text" id="c" readonly="yes" /></td>
                                              <td width="49"><div align="left"><img src="Images/date.gif" width="20" height="20" onclick="loadCalendar(form1.birthday)" /></div></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                      <tr>
                                        <td width="69" class="STYLE2"><div align="left">性　　別</div></td>
                                        <td width="112"><select name="sex" id="sex">
                                            <option>請選取性別</option>
                                            <option value="男">男</option>
                                            <option value="女">女</option>
                                          </select>                                        </td>
                                        <td width="67" class="STYLE2"><div align="center">婚姻狀況</div></td>
                                        <td width="160"><select name="hy" id="hy">
                                            <option>請選取婚姻狀況</option>
                                            <option value="已婚">已婚</option>
                                            <option value="未婚">未婚</option>
                                          </select>                                        </td>
                                      </tr>
                                      <tr>
                                        <td class="STYLE2"><div align="left">所屬單位</div></td>
                                        <td colspan="3"><input name="dw" type="text" id="dw" size="40" onkeydown="if(event.keyCode==13){form1.department.focus();}" /></td>
                                      </tr>
                                      <tr>
                                        <td class="STYLE2"><div align="left">所屬部門</div></td>
                                        <td><input name="department" type="text" id="department" onkeydown="if(event.keyCode==13){form1.zw.focus();}" size="15" /></td>
                                        <td class="STYLE2"><div align="center">職　　務</div></td>
                                        <td><input name="zw" type="text" id="zw" onkeydown="if(event.keyCode==13){form1.sf.focus();}" size="15" /></td>
                                      </tr>
                                      <tr>
                                        <td class="STYLE2"><div align="left">所在省份</div></td>
                                        <td><input name="sf" type="text" id="sf" onkeydown="if(event.keyCode==13){form1.cs.focus();}" size="15" /></td>
                                        <td class="STYLE2"><div align="center">所在城市</div></td>
                                        <td><input name="cs" type="text" id="cs" onkeydown="if(event.keyCode==13){form1.phone.focus();}" size="15" /></td>
                                      </tr>
                                      <tr>
                                        <td height="22" class="STYLE2"><div align="left">辦公電話</div></td>
                                        <td><input name="phone" type="text" id="phone" onkeydown="if(event.keyCode==13){form1.phone1.focus();}" size="15" /></td>
                                        <td class="STYLE2"><div align="center">搬移電話</div></td>
                                        <td><input name="phone1" type="text" id="phone1" onkeydown="if(event.keyCode==13){form1.email.focus();}" size="15" /></td>
                                      </tr>
                                      <tr>
                                        <td><div align="center" class="STYLE2">
                                          <div align="left">電子信箱</div>
                                        </div></td>
                                        <td><input name="email" type="text" id="email" onkeydown="if(event.keyCode==13){form1.postcode.focus();}" size="15" /></td>
                                        <td><div align="center" class="STYLE2">郵政解碼</div></td>
                                        <td><input name="postcode" type="text" id="postcode" onkeydown="if(event.keyCode==13){form1.OICQ.focus();}" size="15" /></td>
                                      </tr>
                                      <tr>
                                        <td height="22" class="STYLE2"><div align="left">OICQ</div></td>
                                        <td><input name="OICQ" type="text" id="OICQ" onkeydown="if(event.keyCode==13){form1.family.focus();}" size="15" /></td>
                                        <td class="STYLE2"><div align="center">家庭電話</div></td>
                                        <td><input name="family" type="text" id="family" onkeydown="if(event.keyCode==13){form1.address.focus();}" size="15" /></td>
                                      </tr>
                                      <tr>
                                        <td height="26"><div align="center" class="STYLE2">
                                          <div align="left">家庭住址</div>
                                        </div></td>
                                        <td colspan="3"><input name="address" type="text" id="address" size="35" onkeydown="if(event.keyCode==13){form1.remark.focus();}" /></td>
                                      </tr>
                                      <tr>
                                        <td height="51"><div align="center" class="STYLE2">
                                          <div align="left">備　　注</div>
                                        </div></td>
                                        <td colspan="3"><textarea name="remark" cols="35" rows="3" id="remark"></textarea></td>
                                      </tr>
                                      <tr>
                                        <td height="31" colspan="4" valign="top"><table width="194" height="28" border="0" align="center" cellpadding="0" cellspacing="0">
                                            <tr>
                                              <td><a href="#"><img src="Images/10.GIF" width="80" height="31" border="0" onclick="Mycheck();" /></a><a href="#"></a><a href="#"><img src="Images/qiyebutton1.gif" width="81" height="31" border="0" onclick="JScript:form1.reset();" /></a></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                              </tr>
                          </table></td>
                        </tr>
                      </table>
                    </form></td>
              </tr>
            </table></td>
            <td width="10" background="images/bei0.gif"></td>
          </tr>
          <tr>
            <td height="41" colspan="3" background="images/5.jpg">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td colspan="2"><!--#include file="down.asp"--></td>
  </tr>
</table>
</body>
</html>
