<%@ page contentType="text/html; charset=utf-8" language="java" %>
<html>
<head>
<title>關閉出現視窗時更新父視窗</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="style.css" rel="stylesheet">
</head>
<script language="javascript">
function mycheck(){
        if (form1.typename.value==""){
                alert("請輸入商品類別別！");form1.typename.focus();return;
	}
	if (form1.goodsName.value==""){
		alert("請輸入商品名稱！");form1.goodsName.focus();return;
	}
	if (form1.spec.value==""){
		alert("請輸入規格！");form1.spec.focus();return;
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
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr bgcolor="#E6E0DC">
    <td height="5" colspan="3"></td>
  </tr>
  <tr>
    <td width="5" height="40" bgcolor="#E6E0DC" class="white"></td>
    <td background="Images/Top.GIF" class="white">&nbsp;加入新商品</td>
    <td width="5" bgcolor="#E6E0DC" class="white"></td>
  </tr>
</table>

<table width="100%"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td>
		      <table width="100%" height="208"  border="0" cellpadding="-2" cellspacing="-2">
                <tr>
                  <td width="6%" height="187"></td>
                  <td colspan="2" valign="top" style="padding:5px;"><form action="goods_add_deal.jsp" method="post" name="form1">
			    <table width="100%"  border="0" align="center" cellpadding="-2" cellspacing="-2" bordercolordark="#FFFFFF">
                  <tr>
                    <td height="27">&nbsp;所屬類別別：</td>
                    <td height="27" colspan="3">&nbsp;
                      <input name="typename" type="text" class="Sytle_text" id="goodsName" size="30">				  	</td>
                  </tr>
                  <tr>
                    <td width="14%" height="27">&nbsp;商品名稱：</td>
                    <td height="27" colspan="3">&nbsp;
                      <input name="goodsName" type="text" class="Sytle_text" id="bookID2" size="50">&nbsp;&nbsp;                    </td>
                  </tr>
                  <tr>
                    <td height="41">&nbsp;規&nbsp;&nbsp;&nbsp;&nbsp;格：</td>
                    <td width="31%" height="41">&nbsp;
                          <input name="spec" type="text" class="Style_upload" id="spec">                    </td>
                    <td width="13%" height="41">&nbsp;定　　價：</td>
                    <td width="42%" height="41">&nbsp;
                          <input name="price" type="text" class="Sytle_text" id="price">
      (元)</td>
                  </tr>
                  <tr>
                    <td height="45">&nbsp;是否新品：</td>
                    <td>&nbsp; <input name="newGoods" type="radio" class="noborder" value="1" checked>
是
  <input name="newGoods" type="radio" class="noborder" value="0">
否</td>
                    <td>&nbsp;是否特價：</td>
                    <td><input name="sale" type="radio" class="noborder" value="1" checked>
是
  <input name="sale" type="radio" class="noborder" value="0">
否</td>
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
			  </form></td>
                  <td width="5%">&nbsp;</td>
                </tr>
                <tr>
                  <td width="6%" bgcolor="#EEEEEE"></td>
                  <td width="46%" height="21" bgcolor="#EEEEEE">&nbsp;</td>
                  <td width="43%" bgcolor="#EEEEEE">&nbsp;</td>
                  <td width="5%" bgcolor="#EEEEEE">&nbsp;</td>
                </tr>
    </table>	</td>
  </tr>
  <tr>
    <td height="28" bgcolor="#E6E0DC">&nbsp;</td>
  </tr>
</table>
</body>
</html>
