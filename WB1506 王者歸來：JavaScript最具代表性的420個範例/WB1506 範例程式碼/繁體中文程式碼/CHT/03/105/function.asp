<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%
function checkCode(digit)
	'自動產生驗證碼
	seed="9"
	base="1"
	for i=1 to digit-1
		seed=seed+"0"
		base=base+"0"
	next
	Randomize
	checkCode=int(seed*rnd+base)
end function
%>
