<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="CSS/style.css" rel="stylesheet">
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
			alert(http_request.responseText);
		} else {
			alert('您請求的頁面發現錯誤');
		}
	}

}
</script>
<script language="javascript">
function checkName() {
	var username = form1.username.value;
	if(username=="") {
		window.alert("請添寫使用者名稱!");
		form1.username.focus();
		return false;
	}
	else {
		createRequest('checkName.jsp?username='+username);
	}
}
</script>
</head>
<body>
<table width="599"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="36" valign="top" bgcolor="#FFFFFF">&nbsp;</td>
    <td width="552" valign="top" bgcolor="#FFFFFF"><table width="100%"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="10" valign="top">&nbsp;</td>
          <td width="542" valign="top"><table width="100%" height="350"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="25" height="350" valign="top">&nbsp;</td>
              <td width="567" valign="top">
                <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="100%" height="5"></td>
                  </tr>
                  <tr valign="top">
                    <td height="41" background="Images/center_how.GIF"><table width="100%" height="29"  border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="6%" height="7">&nbsp;</td>
                        <td width="94%">&nbsp;</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>登錄新使用者</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr align="center" valign="top">
                    <td height="69">
				   <form name="form1" method="post" action="">
				     <table width="76%" height="295"  border="0" cellpadding="0" cellspacing="0">
                       <tr>
                         <td width="22%">&nbsp;</td>
                         <td width="78%">&nbsp;</td>
                       </tr>
                       <tr>
                         <td align="center">使用者名稱：</td>
                         <td><input name="username" type="text" class="table" id="username">
                             <a href="#" onClick="checkName()">[檢驗使用者]</a>&nbsp;*</td>
                       </tr>
                       <tr>
                         <td align="center">密碼：</td>
                         <td class="word"><input name="PWD1" type="password" class="table" id="PWD1">
                           *</td>
                       </tr>
                       <tr>
                         <td align="center">確認密碼：</td>
                         <td class="word"><input name="PWD2" type="password" class="table" id="PWD2">
                           *</td>
                       </tr>
                       <tr>
                         <td align="center">生日：</td>
                         <td class="word"><input name="birthday" type="text" class="table" id="birthday">
                           （格式：1980-07-17）</td>
                       </tr>
                       <tr>
                         <td align="center">性別：</td>
                         <td><input name="sex" type="radio" value="男" checked>
                           男生　
                           <input type="radio" name="sex" value="女">
                           女生</td>
                       </tr>
                       <tr>
                         <td align="center">OICQ號碼：</td>
                         <td><input name="OICQ" type="text" class="table" id="OICQ"></td>
                       </tr>
                       <tr>
                         <td align="center">電話：</td>
                         <td><input name="tel" type="text" class="table" id="tel"></td>
                       </tr>
                       <tr>
                         <td align="center">個人主頁：</td>
                         <td><input name="homepage" type="text" class="table" id="homepage" size="50"></td>
                       </tr>
                       <tr>
                         <td align="center">位址：</td>
                         <td><input name="address" type="text" class="table" id="address" size="50"></td>
                       </tr>
                       <tr>
                         <td align="center">郵政解碼：</td>
                         <td><input name="postcode" type="text" class="table" id="postcode"></td>
                       </tr>
                       <tr>
                         <td align="center">Email：</td>
                         <td class="word"><input name="Email" type="text" class="table" id="Email" size="50">
                           *</td>
                       </tr>
                       <script language="javaScript">
		  function mycheck(){
		  	if(form1.username.value==""){
				alert("請輸入使用者名稱！");form1.username.focus();return;	}
			if(form1.PWD1.value==""){
				alert("請輸入密碼！");form1.PWD1.focus();return;}
		  	if(form1.PWD2.value==""){
				alert("請確認密碼！");form1.PWD2.focus();return;}
		  	if(form1.PWD1.value!=form1.PWD2.value){
				alert("您兩次輸入的密碼不一致，請重新輸入！");
				form1.PWD1.value="";form1.PWD2.value="";form1.PWD1.focus();return;}
			if(form1.Email.value==""){
				alert("請輸入Email位址！");form1.Email.focus();return;	}
			form1.submit();
		  }
		             </script>
                       <tr>
                         <td colspan="2" align="center"><input name="save" type="button" class="btn_grey" onClick="mycheck()" value="儲存">
                              &nbsp;
                              <input name="re" type="reset" class="btn_grey" value="重設"></td>
                       </tr>
                     </table>
				   </form></td>
                  </tr>
                </table>
                </td>
            </tr>
          </table></td>
        </tr>
    </table></td>
    <td width="11" valign="top" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
</table>
</body>
</html>
