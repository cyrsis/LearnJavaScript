<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.core.ConnDB"%>
<%
ConnDB conn=new ConnDB();
ResultSet rs_super=conn.executeQuery("select ID,superType from V_type group by ID,superType");
int superID=-1;
int P_superID=-1;
String superName="";
if(rs_super.next()){
	superID=rs_super.getInt(1);
}
%>
<html>
<head>
<title>無更新的串聯下拉清單</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="CSS/style.css" rel="stylesheet">
</head>
<script language="javascript">
var http_request = false;
function createRequest(url) {
	//起始化物件平行出XMLHttpRequest請求
	http_request = false;
	if (window.XMLHttpRequest) { // Mozilla或其他除IE以外的瀏覽器
		http_request = new XMLHttpRequest();
		if (http_request.overrideMimeType) {
			http_request.overrideMimeType("text/xml");
		}
	} else if (window.ActiveXObject) { // IE瀏覽器
		try {
			http_request = new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			try {
				http_request = new ActiveXObject("Microsoft.XMLHTTP");

		   } catch (e) {}
		}
	}
	if (!http_request) {
		alert("不能建立XMLHTTP案例!");
		return false;
	}
	http_request.onreadystatechange = alertContents;    //指定響應方法
	//發出HTTP請求
	http_request.open("GET", url, true);
	http_request.send(null);
}
function alertContents() {    //處理伺服器傳回的訊息
	if (http_request.readyState == 4) {
		if (http_request.status == 200) {
			subType.innerHTML=http_request.responseText;
		} else {
			alert('您請求的頁面發現錯誤');
		}
	}

}
</script>
<script language="javascript">
function F_super(val){
	createRequest("selSubType.jsp?superID="+val);  //實現串聯下拉清單
}
</script>
<script language="javascript">
function mycheck(){
	if (form1.goodsName.value==""){
		alert("請輸入商品名稱！");form1.goodsName.focus();return;
	}
	if (form1.picture.value==""){
		alert("請輸入圖片檔案的路徑！");form1.picture.focus();return;
	}
	if (form1.price.value==""){
		alert("請輸入商品的定價！");form1.price.focus();return;
	}
	if (isNaN(form1.price.value)){
		alert("您輸入的定價錯誤，請重新輸入！");form1.price.value="";form1.price.focus();return;
	}	
	if (form1.introduce.value==""){
		alert("請輸入商品簡介！");form1.introduce.focus();return;
	}	
	form1.submit();	
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
            <td><a href="#" class="word_white">商品管理<br>
              Goods Manage</a></td>
          </tr>
          <tr>
            <td height="47">&nbsp;</td>
            <td><a href="#" class="word_white">會員管理<br>
              Member Manage</a></td>
          </tr>
          <tr>
            <td height="48">&nbsp;</td>
            <td><a href="#" class="word_white">訂單管理<br>
              Order Manage</a></td>
          </tr>
          <tr>
            <td height="50">&nbsp;</td>
            <td><a href="#" class="word_white">公告管理<br>
               Manage Placard</a></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><a href="#" class="word_white">離開背景<br>
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
                    <td width="14%" height="27">&nbsp;商品名稱：</td>
                    <td height="27" colspan="3">&nbsp;
                      <input name="goodsName" type="text" class="Sytle_text" id="bookID2" size="50">&nbsp;&nbsp;                    </td>
                    </tr>
                  <tr>
                    <td height="27">&nbsp;所屬大類別：</td>
                    <td width="31%" height="27">&nbsp;
                      <select name="supertype" class="textarea" id="supertype" onChange="F_super(this.value)">
					  <%rs_super.first();
					  do{
						  superID=rs_super.getInt(1);
						  superName=rs_super.getString(2);
					  %>
					  <option value="<%=superID%>"<%if(superID==P_superID){out.println(" selected");/*注意此處的分號*/}%>><%=superName%></option>
					  <%}while(rs_super.next());%>
                      </select></td>
                    <td width="13%" height="27"> &nbsp;所屬小類別：</td>
                    <td width="42%" height="27" id="subType">&nbsp;

					 </td>
                  </tr>
                  <tr>
                    <td height="41">&nbsp;圖片檔案：</td>
                    <td height="41">&nbsp;
                          <input name="picture" type="text" class="Style_upload" id="picture">                    </td>
                    <td height="41">&nbsp;定　　價：</td>
                    <td height="41">&nbsp;
                          <input name="price" type="text" class="Sytle_text" id="price">
      (元)</td>
                  </tr>
                  <tr>
                    <td height="103">&nbsp;商品簡介：</td>
                    <td colspan="3"><span class="style5">&nbsp; </span>
                        <textarea name="introduce" cols="60" rows="5" class="textarea" id="introduce"></textarea></td>
                  </tr>
                  <tr>
                    <td height="38" colspan="4" align="center">
                        <input name="Button" type="button" class="btn_grey" value="儲存" onClick="mycheck()">
&nbsp;                        
<input name="Submit2" type="reset" class="btn_grey" value="重設">
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
        <td height="13" colspan="3" align="center">Go購電子商城客戶服務熱線：0431-84978981，84978982 傳真：0431-84972266</td>
        <td width="141">&nbsp;</td>
      </tr>
      <tr>
        <td height="15" colspan="2">&nbsp;</td>
        <td width="464" valign="bottom" align="center"> CopyRight &copy; 2007 www.mingrisoft.com 吉林省明日科技有限公司</td>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2">&nbsp;</td>
        <td align="center">本站請使用IE6.0或以上版本 1024*768為最佳顯示效果</td>
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
<script language="javascript">
F_super(form1.supertype.value);
</script>
</body>
</html>
