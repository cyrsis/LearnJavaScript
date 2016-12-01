<%@ page contentType="text/html; charset=utf-8" language="java" %>
<html>
<head>
<title>出現網頁模式交談視窗</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="css/style.css" rel="stylesheet">
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
<table width="777" height="192"  border="0" align="center" cellpadding="0" cellspacing="0" class="tableBorder">
<tr>
  <td>
    <table width="100%" height="123" border="0" cellpadding="0" cellspacing="0" background="images/manage_01.gif">
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table>
<table width="777" height="288"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="182" valign="top"><table width="100%" height="431"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td valign="top" background="images/manage_02.gif"></td>
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
          <form action="goods_add_deal.jsp" method="post" name="form1">
			    <table width="100%"  border="0" align="center" cellpadding="-2" cellspacing="-2" bordercolordark="#FFFFFF">
                  <tr>
                    <td height="27">&nbsp;所屬類別別：</td>
                    <td height="27" colspan="3">&nbsp;
                      <input name="typename" type="text" class="Sytle_text" id="goodsName" size="30">
					  	<script language="javascript">
	function opendialog(){
	var typename=window.showModalDialog("optType.jsp","","dialogWidth=369px;dialogHeight=257px;status=no;help=no;scrollbars=no")
	document.form1.typename.value=typename;
	}
	</script>
                      <input name="Submit1" type="button" value="選取商品類別別" class="btn_grey"  onClick="opendialog()"></td>
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
			  </form>
          </td>
        </tr>
      </table>
      <table width="100%" height="46"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td background="manage_06.gif">&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
<table width="777"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="54" align="center"><table width="100%" height="78"  border="0" align="center" cellpadding="-2" cellspacing="-2">
      <tr>
        <td height="13" colspan="4"><div align="center">
          <hr width="100%" size="1">
          </div></td>
        </tr>
      <tr>
        <td width="124" height="15">&nbsp;</td>
        <td width="464" valign="bottom" align="center"> CopyRight &copy; 2007 www.mingrisoft.com 吉林省明日科技有限公司</td>
        <td width="141">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td align="center">本站請使用IE6.0或以上版本 1024*768為最佳顯示效果</td>
        <td>&nbsp;</td>
      </tr>
      <tr bgcolor="#cccccc">
        <td height="8"></td>
        <td height="8" align="center"></td>
        <td height="8"></td>
      </tr>
    </table></td>
  </tr>
</table>
</td>
</tr>
</table>
</body>
</html>
