//判斷使用者的輸入是否合法
function check(){
	if (myform.UserName.value==""){
		alert("請輸入使用者名稱！");myform.UserName.focus();return;
	}
	if (myform.TrueName.value==""){
		alert("請輸入真實姓名！");myform.TrueName.focus();return;
	}
	if (myform.PWD1.value==""){
		alert("請輸入密碼！");myform.PWD1.focus();return;
	}
	if (myform.PWD1.value.length<6){
		alert("密碼至少為6位，請重新輸入！");myform.PWD1.focus();return;
	}		
	if (myform.PWD2.value==""){
		alert("請確認密碼！");myform.PWD2.focus();return;
	}
	if (myform.PWD1.value!=myform.PWD2.value){
		alert("您兩次輸入的密碼不一致，請重新輸入！");myform.PWD1.focus();return;
	}
	if(myform.cardNO.value==""){
		alert("請證件號碼！");myform.cardNO.focus();return;
	}		
	if (myform.Email.value==""){
		alert("請輸入Email位址！");myform.Email.focus();return;
	}
	var i=myform.Email.value.indexOf("@");
	var j=myform.Email.value.indexOf(".");
	if((i<0)||(i-j>0)||(j<0)){
		alert("您輸入的Email位址不正確，請重新輸入！");myform.Email.value="";myform.Email.focus();return;
	}
	myform.submit();		
}
//判斷使用者的輸入是否合法
function check_m(){
	if (myform.TrueName.value==""){
		alert("請輸入真實姓名！");myform.TrueName.focus();return;
	}
	if (myform.PWD1.value==""){
		alert("請輸入原密碼！");myform.PWD1.focus();return;
	}
	if (myform.PWD1.value!=myform.oldPWD.value){
		alert("您輸入的原密碼不正確，請重新輸入！");myform.PWD1.focus();return;
	}		
	if (myform.PWD2.value==""){
		alert("請輸入新密碼！");myform.PWD2.focus();return;
	}
	if (myform.PWD3.value==""){
		alert("請確認新密碼！");myform.PWD3.focus();return;
	}
	if (myform.PWD2.value!=myform.PWD3.value){
		alert("您兩次輸入的新密碼不一致，請重新輸入！");myform.PWD2.focus();return;
	}
	if(myform.cardNO.value==""){
		alert("請證件號碼！");myform.cardNO.focus();return;
	}		
	if (myform.Email.value==""){
		alert("請輸入Email位址！");myform.Email.focus();return;
	}
	var i=myform.Email.value.indexOf("@");
	var j=myform.Email.value.indexOf(".");
	if((i<0)||(i-j>0)||(j<0)){
		alert("您輸入的Email位址不正確，請重新輸入！");myform.Email.value="";myform.Email.focus();return;
	}
	myform.submit();		
}