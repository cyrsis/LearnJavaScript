<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<% 
function randStr(vDigit)
	numn="0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F,G,輝,I,J,K,L,明,N,O,P,Q,日,宋,T,U,V,W,X,Y,Z"     '這裡還可以繼續加入
	numns=split(numn,",")
	for i=1 to vDigit   '注意:此處不可用do while循環
		Randomize
		num1=numns(int((35)*rnd))  '
		numimage=num1
		numi=numi&numimage
		num=num&num1
	next
	randStr=num
end function
%>