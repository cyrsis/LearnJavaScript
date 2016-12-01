<link rel="stylesheet" type="text/css" href="style.css">
<script language="javascript">
function select_face()
{
var somevalue;
somevalue=window.showModalDialog('browse.php','','dialogWidth=600px dialogHeight=450px status=no help=no scrollbars=no');
document.form_regist.user_src.src="images/head/"+somevalue+".gif";
 }
</script>
<table width="800" height="23" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="images/top.gif" width="800" height="23"></td>
  </tr>
</table>
<table width="800" height="50" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td bgcolor="#82A3DF"><table width="800" border="0" align="center" cellpadding="0" cellspacing="1">
      <tr>
        <td height="25" background="images/menubar.gif" bgcolor="#FFFFFF"><div align="left">&nbsp;&nbsp;&nbsp;<img src="images/menubar_left.gif" width="9" height="9">&nbsp;&nbsp;<strong>使用者登錄</strong></div></td>
      </tr>
      <tr>
        <td bgcolor="#FFFFFF"><table width="790" height="411" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="480" height="411" valign="top"><table width="450" height="25" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td><div align="left"><img src="images/topic.gif" width="10" height="9" />&nbsp;&nbsp;登錄為普通使用者</div></td>
              </tr>
            </table>
              <table width="450" border="0" align="center" cellpadding="0" cellspacing="0">
			  <form name="form_regist" method="post"  onsubmit="return chkinput(this)">
                <tr>
                  <td width="120" height="30">
                    <div align="center">使用者暱稱：</div></td>
                  <td width="330"><div align="left"><input type="text" name="user_name" size="25" maxlength="20" class="buttoncss">
				  *&nbsp;</div></td>
                </tr>
                <tr>
                  <td height="30"><div align="center">登錄密碼：</div></td>
                  <td height="30"><div align="left"><input type="password" name="user_pwd1" size="25" maxlength="20" class="buttoncss">
                    *</div></div></td>
                </tr>
                <tr>
                  <td height="30"><div align="center">重復密碼：</div></td>
                  <td height="30"><div align="left"><input type="password" name="user_pwd2" size="25" maxlength="20" class="buttoncss">
                    *</div></div></td>
                </tr>
                <tr>
                  <td height="30"><div align="center">E-mail：</div></td>
                  <td height="30"><div align="left">
                    <input type="text" name="user_email" size="25" maxlength="100" class="buttoncss" />
                  *請輸入真實的E-mail位址</div></td>
                </tr>
				<tr>
                  <td height="30"><div align="left"><img src="images/topic.gif" width="10" height="9" />&nbsp;繼續登錄為會員</div></td>
                  <td height="30"><div align="left">
                    <select name="user_hy">
                      <option selected="selected" value="1">是</option>
                      <option value="0">否</option>
                    </select>
                    若果繼續登錄為會員請填寫以下訊息</div>                    </td>
				</tr>
				 <tr>
                  <td height="30"><div align="center">真實姓名：</div></td>
                  <td height="30"><div align="left">
                    <input type="text" name="user_truename" size="25" maxlength="20" class="buttoncss" />
                  *</div></td>
                </tr>
				<tr>
                  <td height="30"><div align="center">性&nbsp;&nbsp;別：</div></td>
                  <td height="30"><div align="left">
                  <select name="user_sex" >
                    <option selected="selected" value="男女">請選取</option>
                    <option  value="男" >&nbsp;&nbsp;男</option>
                    <option  value="女" >&nbsp;&nbsp;女</option>
                  </select>
                  *</div></td>
                </tr>
				<tr>
                  <td height="30"><div align="center">職&nbsp;&nbsp;業：</div></td>
                  <td height="30"><div align="left"> 
                            <select name="user_zy" id="user_zy">
                              <option selected value="請選取">請選取</option>
							  <option value="工人">工人</option>
                              <option value="農民">農民</option>
							  <option value="教師">教師</option>
							  <option value="司機">司機</option>
							  <option value="軍人">軍人</option>
							  <option value="學生">學生</option>
							  <option value="職員">職員</option>
							  <option value="干部">干部</option>
							  <option value="其他">其他</option>
                            </select>
                            *</div></td>
                </tr>
				<tr>
                  <td height="100" rowspan="2"><div align="center">頭&nbsp;&nbsp;像：</div></td>
                  <td height="70"><div align="left"><img id="user_src" src="images/head/0.gif" width="60" height="60" /></div></td>
                </tr>
				<tr>
				  <td height="30">[<a href="#" onclick="select_face()" class="a1">圖示選取</a>]</td>
				  </tr>
				  <tr>
                  <td height="30"><div align="center">QQ號碼：</div></td>
                  <td height="30"><div align="left">
                    <input type="text" name="user_qq" size="25" maxlength="20" class="buttoncss" />
                  *</div></td>
                </tr>
				<tr>
                  <td height="30"><div align="center">聯繫電話：</div></td>
                  <td height="30"><div align="left">
                    <input name="user_tel" type="text" class="buttoncss" id="user_tel" size="25" maxlength="20" />
                  *</div></td>
                </tr>
				<tr>
                  <td height="30"><div align="center">家庭住址：</div></td>
                  <td height="30"><div align="left">
                    <input name="user_address" type="text" class="buttoncss" id="user_address" size="50" maxlength="50" />
                  *</div></td>
                </tr>
				<tr>
                  <td height="15" colspan="2"><marquee>若果登錄為明日科技的會員，您將收到明日科技的禮品，但您必須正確填寫個人的訊息！</marquee></td>
                </tr>
				<tr>
                  <td height="30" colspan="2"><div align="center"><input type="submit" value="立即登錄" class="buttoncss">&nbsp;&nbsp;<input type="reset" value="全部重新定義" class="buttoncss"></div></td>
                </tr>
				<tr>
                  <td height="15" colspan="2"></td>
                </tr>
			 </form>
              </table></td>
            <td width="10" background="images/line_down.gif">&nbsp;</td>
            <td width="300"><table width="250" height="25" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
                      <td>登錄指南：</td>
  </tr>
</table>
<table width="200" height="300" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td><TEXTAREA rows=30 cols=40 class="inputcss">       明日科技線上討論區登錄指南

普通使用者應輸入的訊息
   
   
   1、使用者暱稱
      為了能夠定位不同的使用者，本討論區將為不同的使用者分配不同的暱稱，支援中文。
   2、使用者密碼
      為了提昇討論區安全性，使用者登錄密碼應大於6位。
   3、E-mail位址
      使用者填寫的真實的E-mail位址,成功登錄為明日科技的普通使用者或會員後，您可以開啟信箱檢視確認訊息和禮品。
	  
	  
繼續登錄為會員應輸入的訊息
  
  
   4、為了便於明日科技與您聯繫，請輸入您的真實姓名。
   5、可從下拉清單中選取您的性別。
   6、可從下拉清單中選取您的職業。
   7、登錄使用者可以根據自己的個性選取喜歡的圖示。
   8、為了便於明日科技與您聯繫，請輸入您的QQ號碼。
   9、為了便於明日科技與您聯繫，請輸入您的聯繫電話。
   10、為了便於明日科技與您聯繫，請輸入您的聯繫位址。
   
感謝您對明日科技的支援。     	      
</TEXTAREA></td>
                    </tr>
                  </table></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="800" height="6" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td></td>
  </tr>
