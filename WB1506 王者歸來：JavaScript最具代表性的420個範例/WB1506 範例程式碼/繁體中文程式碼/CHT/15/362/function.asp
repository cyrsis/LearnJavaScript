<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%
'*****************************
'功能:開啟指定大小的新視窗並設定視窗置中顯示
'呼叫方法:call openwin(url,width,height,number)
'說明：若果w的值為0，則新視窗尺寸不做控制
'*****************************
function openwin(url,w,h,no)
	response.Write("<script language='javascript'>function openwin"&no&"(){")
	response.Write("if ("&w&"=='0'){var winhdc=window.open('"&url&"');")
	response.Write(	"var width=0;var height=0;}else{")
	response.Write("var winhdc=window.open('"&url&"','','width="&w&",height="&h&"');")
	response.Write("var width=(screen.width-"&w&")/2;")
	response.Write("var height=(screen.height-"&h&")/2;}")
	response.Write("winhdc.moveTo(width,height);")
	response.Write("}</script>")
end function
%>