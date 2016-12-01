<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="Conn/Conn.asp"-->
<%
set rs_Type=server.CreateObject("ADODB.RecordSet")
sql="select * from tb_Type where sort='函數套用'"
rs_Type.open sql,conn,1,3

set rs=server.CreateObject("ADODB.RecordSet")
sql="select P.*,T.name as Typename from tb_function P inner join tb_Type T on P.Type= T.ID order by P.hit desc"
rs.open sql,conn,1,3
%>
<html>
<head>
<title>樹狀導覽選單</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="CSS/style.css" rel="stylesheet">
</head>

<body>
<!--#include file="Top.asp"-->
<table width="882" height="61"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="259" valign="top" background="images/sub_new01.GIF"><table width="100%" height="38"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="31%" height="14">&nbsp;</td>
        <td width="69%">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td class="word_white">函數分類別清單</td>
      </tr>
    </table></td>
    <td colspan="2" background="images/bg_Navigation_sub.gif"><!--#include file="navigation.asp"--></td>
  </tr>
</table>
<table width="882"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="259" valign="top" bgcolor="#FFFFFF"><table width="100%"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="17" valign="top"><img src="images/left_01.GIF" width="17" height="173"></td>
        <td valign="top"><table width="100%" height="25"  border="0" cellpadding="0" cellspacing="0">
            <%rs_Type.movefirst()
			if rs_type.eof and rs_type.bof then%>
            <tr>
              <td align="center">暫無函數分類別訊息!</td>
            </tr>
            <%
			else
			m=1
			 for i=1 to rs_type.recordcount
				set rs_L=server.CreateObject("ADODB.RecordSet")
				sql="select P.*,T.name as Typename from tb_function P inner join tb_Type T on P.Type= T.ID where P.Type="&rs_Type("ID")&" order by P.hit desc"
				rs_L.open sql,conn,1,3
			 %>
            <tr>
			<td>
					<%
					If(rs_L.eof and rs_L.bof)Then
					%>
					&nbsp;<img src="Images/jian_null.gif" width="38" height="16" border="0">
					<%=server.HTMLEncode(rs_Type("name"))%>
					<%
					Else
					%>
					&nbsp;<a href="Javascript:ShowTR(img<%=m%>,OpenRep<%=m%>)"><img src="Images/jia.gif" border="0" alt="展開" id="img<%=m%>"></a>
					<a href="Javascript:ShowTR(img<%=m%>,OpenRep<%=m%>)"><%=server.HTMLEncode(rs_Type("name"))%></a>
					<%
					End If
					%>
                </td>
				<%if rs_L.recordcount>0 then%>
			  <tr id="OpenRep<%=m%>" style="display:none;">
			   <td colspan="6">				
				<% for j=1 to rs_L.recordcount%>
			     <table width="100%"  border="0" cellspacing="-2" cellpadding="-2">
                   <tr onMouseOver="this.style.background='#EEEEEE'" onMouseOut="this.style.background=''">
                      <td height="25" align="center"><table width="90%"  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="12%" align="center"><img src="images/folder.gif" width="16" height="16" border="0"> </td>
                    <td width="88%"><%=rs_L("name")%></td>
                  </tr>
              </table></td>
                   </tr>
                 </table>
				 <%	m=m+1  '注意，該條敘述一定不能少
			  		rs_L.movenext
				next
				%>
			   </td>
			   <%end if%>
			  </tr>
<%
			 rs_Type.movenext
			If rs_Type.Eof Then exit For 
			 next
			 end if
%>
<script language="javascript">
ShowTR(img1,OpenRep1)  //設定第1個節點為展開狀態
function ShowTR(objImg,objTr){
	if(objTr.style.display == "block"){
		objTr.style.display = "none";
		objImg.src = "Images/jia.gif";
		objImg.alt = "展開";		
	}else{
		objTr.style.display = "block";
		objImg.src = "Images/jian.gif";
		objImg.alt = "折疊";		
	}
}
</script>
        </table></td>
        <td width="23" valign="top"><img src="images/left_02.GIF" width="25"></td>
      </tr>
    </table>    </td>
    <td valign="top" bgcolor="#FFFFFF"><table width="100%"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="26" valign="top">&nbsp;</td>
        <td width="566" valign="top"><table width="100%" height="60"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td><table width="100%" height="60"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td><table width="100%" height="42"  border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td height="10" colspan="2" background="images/sub_line.GIF"></td>
                  </tr>
                  <tr>
                    <td height="3" colspan="2"></td>
                  </tr>
                  <tr>
                    <td height="29" class="word_blue">目前位置：Visual Basic寫程式詞典&gt; 首頁 &gt; 函數套用 &gt;&gt;&gt; </td>
                    <td width="19%" class="word_blue">[ 傳回首頁 ]</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
            </tr>
            <tr>
              <td ><table width="100%"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="24" height="118" valign="top">&nbsp;</td>
        <td valign="top" style="line-height:140% ">&nbsp;&nbsp;&nbsp;&nbsp; 在程式開發中，無論是小巧精緻的工具軟體，還是功能復雜的管理系統，都需要使用函數。可以說，合理有效的使用函數，可以使程式設計事半功倍，要成為一名合格的軟體開發人員，必須熟練掌握函數的使用方法。<br>
&nbsp;&nbsp;&nbsp;&nbsp; 《 Visual Basic 寫程式詞典》軟體函數套用部分提供了 Visual Basic 所有內定函數的詳細使用方法，同時附以大量套用範例介紹這些函數如何在實際開發中套用。另外，函數部分還提供了幾十個自訂函數，以便於開發者快速寫程式和撰寫自己的函數。<br>
&nbsp;&nbsp;&nbsp;&nbsp; 《Visual Basic 寫程式詞典》軟體函數套用部分提供了智慧檢索功能。開發者可以在典型案例、專案原始程式、經驗技巧和基礎知識庫中快速檢索函數在實際開發中的套用，快速提昇寫程式水平。<br>
&nbsp;&nbsp;&nbsp;&nbsp; <div id="feature" class="shadow_3"><b>特點如下：</b></div><br>
&nbsp;&nbsp;&nbsp;&nbsp; <span class="shadow_2"><strong>☆ 高效率、快速</strong></span> 《 Visual Basic 寫程式詞典》軟體提供了智慧檢索功能。開發者可以在函數、控制項、典型案例、專案原始程式、經驗技巧和基礎知識庫中快速檢索函數在實際案例開發中的套用，快速解決開發中的各種問題，真正實現高效率寫程式。<br>
&nbsp;&nbsp;&nbsp;&nbsp; <span class="shadow_2"><strong>☆ 物超所值</strong></span> 《 Visual Basic 寫程式詞典》軟體函數部分是由十幾名 Visual Basic 資深開發人員長期開發整理和複習而成，是目前較全面、較實用的函數套用資料，絕對物超所值。<br>
&nbsp;&nbsp;&nbsp;&nbsp; <span class="shadow_2"><strong>☆ 函數全面、系統</strong></span> 《Visual Basic 寫程式詞典》軟體利用網頁與資料庫結合技術，突破了圖書受頁面、版面的限制，軟體容量超過 1G ，折算頁碼超過200,000 頁，是一個真正意義上的 Visual Basic 寫程式技術資源大全。解決了開發者技術難查、經驗難學、專案難做的難題，真正成為開發者的左膀右臂、技術參謀。<br>
&nbsp;&nbsp;&nbsp;&nbsp; <span class="shadow_2"><strong>☆ 套用實作性強</strong></span> 每個函數均提供了大量範例和典型套用，所有範例都是從實際專案中篩選和提煉的，是程式程式碼中的精華。典型套用列出了關聯函數在各方面的套用，可以使讀者身臨其境研讀所學技術的不同套用方向，使讀者真正掌握關聯函數在實際專案中的使用方法和技巧。<br>
&nbsp;&nbsp;&nbsp;&nbsp; <span class="shadow_2"><strong>☆ 案例豐富</strong></span> 《 Visual Basic 寫程式詞典》軟體函數部分提供了上千個範例和上百個典型套用案例。有的案例（範例）是作者開發實作的累積，有的案例來源於公司的開發專案，還有的來自讀者的問題。這些案例所涉及的知識都是非常實用的，能夠給讀者以啟發。<br>
&nbsp;&nbsp;&nbsp;&nbsp; <span class="shadow_2"><strong>☆ 陞級和有限支援</strong></span> 為給廣大寫程式愛好者提供最新的函數套用技術，《 Visual Basic 寫程式詞典》軟體開發版以上版本提供每月昇級服務和有限支援服務，真正讓您寫程式詞典在手，軟體開發無憂。</td>
        <td width="29" valign="top">&nbsp;</td>
      </tr>
      <tr>
        <td height="13" valign="top">&nbsp;</td>
        <td align="center" valign="top">&nbsp;</td>
        <td valign="top">&nbsp;</td>
      </tr> 
</table> 
 
                </td>
            </tr>
          </table>
          </td>
      </tr>
    </table></td>
    <td width="31" valign="top" bgcolor="#FFFFFF"><img src="images/main_detail03.GIF" width="31" height="173"></td>
  </tr>
</table>
<!--#include file="copyright.asp" -->

</body>
</html>