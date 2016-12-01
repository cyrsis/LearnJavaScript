//判斷使用者的輸入是否合法
function check(){
	if (myform.username.value==""){
		alert("請輸入使用者名稱！");myform.username.focus();return;
	}
	if (myform.truename.value==""){
		alert("請輸入真實姓名！");myform.truename.focus();return;
	}
	if (myform.pwd.value==""){
		alert("請輸入密碼！");myform.pwd.focus();return;
	}
	if (myform.pwd.value.length<1){
		alert("密碼至少為6位，請重新輸入！");myform.pwd.focus();return;
	}		
	if (myform.pwd1.value==""){
		alert("請確認密碼！");myform.pwd1.focus();return;
	}
	if (myform.pwd.value!=myform.pwd1.value){
		alert("您兩次輸入的密碼不一致，請重新輸入！");myform.pwd.focus();return;
	}
	if(myform.cardno.value==""){
		alert("請證件號碼！");myform.cardno.focus();return;
	}		
	if (myform.email.value==""){
		alert("請輸入Email位址！");myform.email.focus();return;
	}
	var i=myform.email.value.indexOf("@");
	var j=myform.email.value.indexOf(".");
	if((i<0)||(i-j>0)||(j<0)){
		alert("您輸入的Email位址不正確，請重新輸入！");myform.email.value="";myform.email.focus();return;
	}
	myform.submit();		
}
function check_modi(){
	if (myform.truename.value==""){
		alert("請輸入真實姓名！");myform.truename.focus();return;
	}
	if (myform.oldpwd.value==""){
		alert("請輸入原密碼！");myform.oldpwd.focus();return;
	}
	if(myform.holdpwd.value!=myform.oldpwd.value){
		alert("您輸入的原密碼不正確，請重新輸入！");myform.oldpwd.value="";myform.oldpwd.focus();return;
	}
	if (myform.pwd.value==""){
		alert("請輸入新密碼！");myform.pwd.focus();return;
	}
	if (myform.pwd.value.length<1){
		alert("新密碼至少為6位，請重新輸入！");myform.pwd.focus();return;
	}		
	if (myform.pwd1.value==""){
		alert("請確認新密碼！");myform.pwd1.focus();return;
	}
	if (myform.pwd.value!=myform.pwd1.value){
		alert("您兩次輸入的密碼不一致，請重新輸入！");myform.pwd.focus();return;
	}
	if(myform.cardno.value==""){
		alert("請證件號碼！");myform.cardno.focus();return;
	}		
	if (myform.email.value==""){
		alert("請輸入Email位址！");myform.email.focus();return;
	}
	var i=myform.email.value.indexOf("@");
	var j=myform.email.value.indexOf(".");
	if((i<0)||(i-j>0)||(j<0)){
		alert("您輸入的Email位址不正確，請重新輸入！");myform.email.value="";myform.email.focus();return;
	}
	myform.submit();		
}
function checkU(myform){
	if(myform.username.value==""){
		alert("請輸入使用者名稱!");myform.username.focus();return;
	}
	if(myform.PWD.value==""){
		alert("請輸入密碼!");myform.PWD.focus();return;
	}
	myform.submit();
}

function checkM(myform){
	if(myform.manager.value==""){
		alert("請輸入管理員名!");myform.manager.focus();return;
	}
	if(myform.PWD.value==""){
		alert("請輸入密碼!");myform.PWD.focus();return;
	}
	myform.submit();
}
function CheckAll(elementsA,elementsB){
	for(i=0;i<elementsA.length;i++){
		elementsA[i].checked = true;
	}
	if(elementsB.checked ==false){
		for(j=0;j<elementsA.length;j++){
			elementsA[j].checked = false;
		}
	}
}
//判斷使用者是否選取了要移除的記錄，若果是，則提示“是否移除”；否則提示“請選取要移除的記錄”
function checkdel(delid,formname){
	var flag = false;
	for(i=0;i<delid.length;i++){
		if(delid[i].checked){
			flag = true;
			break;
		}
	}
	if(!flag){
		alert("請選取要移除的記錄！");
		return false;
	}else{
			if(confirm("確定要移除嗎？")){
				formname.submit();
		}
	}
}