//判斷使用者的輸入是否合法
function check(myform){
	if(myform.author.value==""){
		alert("留言人不容許為空!");myform.author.focus();return;
	}
	if (myform.email.value!=""){
		var i=myform.email.value.indexOf("@");
		var j=myform.email.value.indexOf(".");
		if((i<0)||(i-j>0)||(j<0)){
			alert("您輸入的Email位址不正確，請重新輸入！");myform.email.value="";myform.email.focus();return;
		}
	}
	if(myform.content.value==""){
		alert("留言內容不容許為空！");myform.content.focus();return;
	}	
	myform.submit();		
}

function checkM(myform){
	if(myform.name.value==""){
		alert("請輸入管理員名!");myform.name.focus();return;
	}
	if(myform.pwd.value==""){
		alert("請輸入密碼!");myform.pwd.focus();return;
	}
	myform.submit();
}
