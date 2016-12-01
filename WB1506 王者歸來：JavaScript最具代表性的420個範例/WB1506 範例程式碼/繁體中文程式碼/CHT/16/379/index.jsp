<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<title>樹狀導覽選單</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="CSS/style.css" rel="stylesheet">
</head>
<body>
<table width="790"  border="0" cellspacing="0" cellpadding="0" align="center">
 <tr>
 <td class="tableBorder">
   <table width="100%" height="117" border="0" cellpadding="0" cellspacing="0" background="images/top.jpg">
     <tr>
       <td>&nbsp;</td>
     </tr>
   </table>
<table width="790" height="236"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="182" height="182" valign="top">
	<table width="100%"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="83" align="center"><img src="images/shop_11.gif" width="182" height="83"></td>
      </tr>
      <tr>
        <td height="98" align="center" background="images/shop_17.gif">		  <form name="form1" method="post" action="">
		  <table width="100%"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="10%">&nbsp;</td>
              <td width="90%" valign="top" background="Images/index_09.gif">
			  <table width="100%"  border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="94%" height="24">會員名
                    <input name="username" type="text" class="txt_grey" id="username" size="16"></td>
                  <td width="6%">&nbsp;</td>
                </tr>
                <tr>
                  <td height="24">密&nbsp;&nbsp;碼
                    <input name="PWD" type="password" class="txt_grey" id="PWD" size="16" onKeydown="if(event.keyCode==13) form1.submit();"></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td height="31">
                    <input name="Button" type="button" class="btn_grey" value="登錄" >
                    &nbsp;
                    <input name="Submit2" type="button" class="btn_grey" value="登入" >
					                    <input name="Submit3" type="reset" class="btn_grey" value="重設"></td>
                  <td>&nbsp;</td>
                </tr>
              </table>
				</td>
            </tr>
          </table>
		  </form></td>
      </tr>
    </table>
      <table width="100%" height="155"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td><img src="images/shop_22.gif" width="182" height="58"></td>
        </tr>
        <tr>
          <td height="97" align="center" valign="top" class="tableBorder_l"><table width="88%"  border="0" cellspacing="0" cellpadding="0">
			<tr>
              <td height="24" class="tableBorder_T_dashed"><a href="#">Go購電子商城開業了</a></td>
            </tr>
          </table></td>
        </tr>
      </table>
      <table width="100%" height="151"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td height="40" background="images/shop_33.gif">&nbsp;</td>
        </tr>
        <tr>
          <td align="center" valign="top" class="tableBorder_lb"><table width="88%"  border="0" cellspacing="0" cellpadding="0">
			<tr>
              <td height="20" class="tableBorder_B_dashed"><a href="#">星座水杯</a></td>
            </tr>
          </table>
            <table width="100%"  border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
        </tr>
      </table>
	</td>
    <td valign="top"><table width="100%"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="33" background="images/shop_12.gif"></td>
        <td width="505" height="33" align="right" valign="middle" background="images/shop_12.gif"><table width="100%" height="24"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="8"></td>
          </tr>
          <tr>
            <td align="right" class="word_green">
			<marquee direction="left" scrollamount="1" scrolldelay="1" onMouseOver="this.stop();" onMouseOut="this.start();">
			^_^ 顧客您好！購買商品請先登入 <a href="register.jsp" class="word_green">[新使用者登錄]</a></marquee></td>
          </tr>
        </table></td>
        <td width="10" background="images/shop_12.gif">&nbsp;</td>
      </tr>
      <tr>
        <td width="93" height="50" background="images/shop_15.gif">&nbsp;</td>
        <td colspan="2" background="images/shop_16.gif">
			<jsp:include page="search.jsp"/>
		</td>
      </tr>
    </table>
      <table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="69%" height="189" valign="top"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="98%" height="80" background="images/shop_18.gif">&nbsp;</td>
              <td width="2%"><img src="images/shop_19.gif" width="10" height="80"></td>
            </tr>
            <tr align="center" valign="top">
              <td height="134" colspan="2"><table width="100%" height="162"  border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="49%" height="162" valign="top">

				  <table width="100%"  border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td height="95" align="center"><img src="images/goods/blank.jpg" width="150" height="88"></td>
                    </tr>
                    <tr>
                      <td height="22" align="center"><a href="goods_detail.jsp">星座水杯</a></td>
                    </tr>
                    <tr>
                      <td height="20" align="center" style="text-decoration:line-through;color:#FF0000">原價：10 </td>
                    </tr>
                    <tr>
                      <td height="20" align="center">現價：8</td>
                    </tr>
                    <tr>
                      <td height="22" align="center"><input name="see" type="button" class="btn_grey"  value="詳細訊息">
						 <input name="see" type="button" class="btn_grey" value="購買">
						 </td></tr></table>
					   </td>
                  <td width="2%" align="center" valign="top"><table width="3" height="160"  border="0" cellpadding="0" cellspacing="0" background="images/point.gif">
                    <tr>
                      <td></td>
                    </tr>
                  </table></td>
                  <td width="49%" valign="top">
				    <table width="100%"  border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td height="95" align="center"><img src="images/goods/hwdlz.jpg" width="150" height="88"></td>
                      </tr>
                      <tr>
                        <td height="22" align="center"><a href="goods_detail.jsp">綠色電視</a></td>
                      </tr>
                      <tr>
                        <td height="20" align="center" style="text-decoration:line-through;color:#FF0000">原價：1255 </td>
                      </tr>
                      <tr>
                        <td height="20" align="center">現價：1100</td>
                      </tr>
                      <tr>
                        <td height="22" align="center"><input name="see" type="button" class="btn_grey"  value="詳細訊息">
						&nbsp;
						 <input name="see" type="button" class="btn_grey"  value="購買">

						 </td>
                      </tr>
                    </table>
			  </td>
                </tr>
              </table></td>
            </tr>
            <tr>
              <td height="42" align="right" background="images/shop_24.gif"><a href="sale.jsp"><img src="images/MORE.GIF" width="50" height="20" border="0"></a><a href="sale.jsp"><br>
                  <br>
              </a></td>
              <td height="42" background="images/shop_25.gif">&nbsp;</td>
            </tr>
          </table>
            <table width="100%" height="76"  border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="361" background="images/shop_28.gif">&nbsp;</td>
                <td width="46" height="35" background="images/shop_29.gif">&nbsp;</td>
              </tr>
              <tr>
                <td colspan="2">
				<table width="100%" height="79"  border="0" cellpadding="0" cellspacing="0" class="tableBorder_B_dashed">
                  <tr>
                    <td width="33%" height="95" rowspan="4" align="center"><img src="images/goods/xxrljtyy.jpg" width="99" height="61"></td>
                    <td width="67%">群組合家庭影院</td>
                    </tr>
                  <tr>
                    <td>單價：1999(元) </td>
                  </tr>
                  <tr>
                    <td>美觀實用</td>
                  </tr>
                  <tr>
                    <td>
                      <input name="see" type="button" class="btn_grey"  value="檢視詳細訊息">
						&nbsp;
						 <input name="see" type="button" class="btn_grey" value="購買">
						 </td>
                  </tr>
                </table>
				</td>
              </tr>
            </table></td>
          <td width="31%" valign="top"><jsp:include page="right.jsp"/></td>
        </tr>
      </table></td>
  </tr>
</table>
<table width="790"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><jsp:include page="copyright.jsp"/></td>
  </tr>
</table>
</td>
</tr>
</table>
</body>
</html>
