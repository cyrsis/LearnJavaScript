<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.core.ConnDB"%>
<%
ConnDB conn=new ConnDB();
//chStr chStr=new chStr();
ResultSet rs_super=conn.executeQuery("select ID,superType from V_type group by ID,superType");
int superID=-1;
String superName="";
if(rs_super.next()){
	superID=rs_super.getInt(1);
}else{
	out.println("<script language='javascript'>alert('ǫψ¼ȫ ᰐŏ⡧);window.location.href='index.jsp';</script>");
	return;
}

int P_superID=-1;
ResultSet rs_sub=null;
//⩑ʴС 億숏ѡϮ
if(request.getParameter("superID")=="" || request.getParameter("superID")==null){
	P_superID=superID;
}else{
	P_superID=Integer.parseInt(request.getParameter("superID"));
}
rs_sub=conn.executeQuery("select * from tb_subType where superType="+P_superID);
int subID=-1;
String subName="";
%>
<html>
<head>
<title>ΞˢЂ儼恪⋵彎title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="CSS/style.css" rel="stylesheet">
</head>
<script language="javascript">
function mycheck(){
	if (form1.goodsName.value==""){
		alert("ǫʤȫɌƷuㆣᢩ;form1.goodsName.focus();return;
	}
	if (form1.picture.value==""){
		alert("ǫʤȫͼƬ΄쾵Ă羶㡢);form1.picture.focus();return;
	}
	if (form1.price.value==""){
		alert("ǫʤȫɌƷ攜輛㡢);form1.price.focus();return;
	}
	if (isNaN(form1.price.value)){
		alert("ĺʤȫ攜輛䭎㣬ǫ֘Ђʤȫ㡢);form1.price.value="";form1.price.focus();return;
	}	
	if (form1.introduce.value==""){
		alert("ǫʤȫɌƷ첽餐");form1.introduce.focus();return;
	}		
}
</script>
<body>
<table width="777" height="192"  border="0" align="center" cellpadding="0" cellspacing="0" class="tableBorder">
<tr>
  <td>
<table width="777" height="115"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td bgcolor="#CCCCCC" height="6px"></td>
      </tr>
    </table>
      <table width="100%" height="123"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td valign="top" background="images/manage_01.gif"><table width="100%" height="118"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="98" colspan="2">&nbsp;</td>
            </tr>
            <tr>
              <td width="25%">&nbsp;</td>
              <td width="75%" class="word_green" id="bgclock"></td>
            </tr>
          </table></td>
        </tr>
      </table></td>
  </tr>
</table>
<table width="777" height="288"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="182" valign="top"><table width="100%" height="431"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td valign="top" background="images/manage_02.gif"><table width="100%" height="301"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="18%" height="61">&nbsp;</td>
            <td width="82%">&nbsp;</td>
          </tr>
          <tr>
            <td height="46">&nbsp;</td>
            <td><a href="#" class="word_white">ɌƷ需���r>
              Goods Manage</a></td>
          </tr>
          <tr>
            <td height="47">&nbsp;</td>
            <td><a href="#" class="word_white">롔Ṝ-<br>
              Member Manage</a></td>
          </tr>
          <tr>
            <td height="48">&nbsp;</td>
            <td><a href="#" class="word_white">橵幜-<br>
              Order Manage</a></td>
          </tr>
          <tr>
            <td height="50">&nbsp;</td>
            <td><a href="#" class="word_white">髸湜-<br>
               Manage Placard</a></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><a href="#" class="word_white">͋㶺㌨<br>
              Exit Background </a></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
    <td align="center" valign="top"><table width="100%" height="120"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td valign="top" background="images/manage_center_goodsadd.gif"><table width="100%" height="36"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="98%" align="right">&nbsp;</td>
            <td width="2%">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table>
      <table width="92%" height="192"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td valign="top">
<table width="100%" height="14"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="13" align="center">&nbsp;</td>
            </tr>
          </table>
            <form action="" method="post" name="form1">
			    <table width="100%"  border="0" align="center" cellpadding="-2" cellspacing="-2" bordercolordark="#FFFFFF">
                  <tr>
                    <td height="27">&nbsp;˹ʴ䳀ࣺ</td>
                    <td width="31%" height="27">&nbsp;
					<script language="javascript">
					function F_super(val){
						window.location.href="index.jsp?superID="+val;   //ʵϖ춁겋飯
					}
					</script>
                      <select name="supertype" class="textarea" id="supertype" onChange="F_super(this.value)">
					  <%rs_super.first();
					  do{
						  superID=rs_super.getInt(1);
						  superName=rs_super.getString(2);
					  %>
					  <option value="<%=superID%>"<%if(superID==P_superID){out.println(" selected");/*עҢ䋴淨疺Ū/}%>><%=superName%></option>
					  <%}while(rs_super.next());%>
                      </select></td>
                    <td width="13%" height="27"> &nbsp;˹ʴС 㺼/td>
                    <td width="42%" height="27">&nbsp;
                      <select name="typeID" class="textarea" id="typeID">
					  <%while(rs_sub.next()){
					  	subID=rs_sub.getInt(1);
					  	subName=rs_sub.getString(3);
					  %>
					   <option value="<%=subID%>"><%=subName%></option>
					  <%}%>
                     </select></td>
                  </tr>
                  <tr>
                    <td width="14%" height="27">&nbsp;ɌƷuㆣ꼯td>
                    <td height="27" colspan="3">&nbsp;
                      <input name="goodsName" type="text" class="Sytle_text" id="bookID2" size="50">&nbsp;&nbsp;                    </td>
                    </tr>
                  <tr>
                    <td height="41">&nbsp;ͼƬ΄쾣꼯td>
                    <td height="41">&nbsp;
                          <input name="picture" type="text" class="Style_upload" id="picture">                    </td>
                    <td height="41">&nbsp;模ᡡ웣꼯td>
                    <td height="41">&nbsp;
                          <input name="price" type="text" class="Sytle_text" id="price">
      (Ԫ)</td>
                  </tr>
                  <tr>
                    <td height="103">&nbsp;ɌƷ첽飺</td>
                    <td colspan="3"><span class="style5">&nbsp; </span>
                        <textarea name="introduce" cols="60" rows="5" class="textarea" id="introduce"></textarea></td>
                  </tr>
                  <tr>
                    <td height="38" colspan="4" align="center">
                        <input name="Button" type="button" class="btn_grey" value="ᣴ梠onClick="mycheck()">
&nbsp;                        
<input name="Submit2" type="reset" class="btn_grey" value="֘փ">
                        &nbsp;</td>
                  </tr>
                </table>
			  </form>
			</td>
        </tr>
      </table>
      <table width="100%" height="46"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td background="images/manage_06.gif">&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
<table width="777"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="54" align="center"><table width="100%" height="78"  border="0" align="center" cellpadding="-2" cellspacing="-2">
      <tr>
        <td height="13" colspan="5"><div align="center">
          <hr width="100%" size="1">
          </div></td>
        </tr>
      <tr>
        <td width="124" height="13">&nbsp;</td>
        <td height="13" colspan="3" align="center">Go面痓Ɍㇿͻ纏αȈϟ㺰431-84978981㬸4978982 䫕棺0431-84972266</td>
        <td width="141">&nbsp;</td>
      </tr>
      <tr>
        <td height="15" colspan="2">&nbsp;</td>
        <td width="464" valign="bottom" align="center"> CopyRight &copy; 2007 www.mingrisoft.com 쪁֊ჷȕ쓐Ϟ髖td>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2">&nbsp;</td>
        <td align="center">ᾕʹӃIE6.0벒ԉϰ汾 1024*768Ϊ׮쑏Ԋ黼/td>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr bgcolor="#cccccc">
        <td height="8" colspan="2"></td>
        <td height="8" align="center"></td>
        <td height="8" colspan="2"></td>
      </tr>
    </table></td>
  </tr>
</table>
</td>
</tr>
</table>
</body>
</html>
