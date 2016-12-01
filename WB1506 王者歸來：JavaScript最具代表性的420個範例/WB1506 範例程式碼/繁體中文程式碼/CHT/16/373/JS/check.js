<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
//判斷使用者的輸入是否合法
function mycheck(myform){
	if (myform.username.value==""){
		alert("請輸入使用者名稱！");myform.username.focus();return;
	}
   if (myform.PWD.value==""){
		alert("請輸入密碼!");myform.PWD.focus();return;
   }  
   if (myform.PWD.value.length<6){
		 alert("密碼長度不足6位!");myform.PWD.focus();return;
   }
      if (myform.PWD.value.length>20){
		alert("密碼長度不能超過20位!");myform.PWD.focus();return;
   }   
   if (myform.PWD1.value==""){
		alert("請確認密碼!");myform.PWD1.focus();return;
   }   
   if (myform.PWD.value!=myform.PWD1.value){
		alert("兩次輸入的密碼不一致，請重新輸入!");myform.PWD.focus();return;
   }
	if (myform.TrueName.value==""){
		alert("請輸入您的真實姓名！");myform.TrueName.focus();return;
	}
	if (! isNaN(myform.TrueName.value)){
		alert("您輸入的真實姓名錯誤，請重新輸入！");myform.TrueName.focus();return;
	}
	if(myform.birthday.value==""){
		alert("請輸入您的生日");myform.birthday.focus();return;
	}		
	if(CheckDate(myform.birthday.value)){
		alert("請輸入標准日期（如：1980/07/17或1980-07-17）");myform.birthday.focus();return;
	}
	if (myform.address.value==""){
		alert("請輸入您的詳細位址！");myform.address.focus();return;
	}
	if (! isNaN(myform.address.value)){
		alert("您輸入的詳細位址錯誤，請重新輸入！");myform.address.focus();return;
	}
	if (myform.postcode.value==""){
		alert("請輸入郵政解碼！");myform.postcode.focus();return;
	}
	if (isNaN(myform.postcode.value)){
		alert("您輸入的郵政解碼錯誤，請重新輸入！");myform.postcode.focus();return;
	}	
	if (myform.Tel.value==""){
		alert("請輸入您的聯繫電話！");myform.Tel.focus();return;
	}		
	if (myform.Email.value==""){
		alert("請輸入Email位址！");myform.Email.focus();return;
	}
	var i=myform.Email.value.indexOf("@");
	var j=myform.Email.value.indexOf(".");
	if((i<0)||(i-j>0)||(j<0)){
		alert("您輸入的Email位址不正確，請重新輸入！");myform.Email.value="";myform.Email.focus();return;
	}
	if (myform.checkCode.value==""){
		alert("請輸入驗證碼！");myform.checkCode.focus();return;
	}
	if (myform.checkCode.value!=myform.hcheckCode.value){
		alert("您輸入的驗證碼不正確！");myform.checkCode.focus();return;
	}
	myform.submit();		
}
//判斷輸入的日期是否正確
function CheckDate(INDate)
{ if (INDate=="")
    {return true;}
	subYY=INDate.substr(0,4)
	if(isNaN(subYY) || subYY<=0){
		return true;
	}
	//轉換月份
	if(INDate.indexOf('-',0)!=-1){	separate="-"}
	else{
		if(INDate.indexOf('/',0)!=-1){separate="/"}
		else {return true;}
		}
		area=INDate.indexOf(separate,0)
		subMM=INDate.substr(area+1,INDate.indexOf(separate,area+1)-(area+1))
		if(isNaN(subMM) || subMM<=0){
		return true;
	}
		if(subMM.length<2){subMM="0"+subMM}
	//轉換日
	area=INDate.lastIndexOf(separate)
	subDD=INDate.substr(area+1,INDate.length-area-1)
	if(isNaN(subDD) || subDD<=0){
		return true;
	}
	if(eval(subDD)<10){subDD="0"+eval(subDD)}
	NewDate=subYY+"-"+subMM+"-"+subDD
	if(NewDate.length!=10){return true;}
    if(NewDate.substr(4,1)!="-"){return true;}
    if(NewDate.substr(7,1)!="-"){return true;}
	var MM=NewDate.substr(5,2);
	var DD=NewDate.substr(8,2);
	if((subYY%4==0 && subYY%100!=0)||subYY%400==0){ //判斷是否為閏年
		if(parseInt(MM)==2){
			if(DD>29){return true;}
		}
	}else{
		if(parseInt(MM)==2){
			if(DD>28){return true;}
		}	
	}
	var mm=new Array(1,3,5,7,8,10,12); //判斷每月中的最大天數
	for(i=0;i< mm.length;i++){
		if (parseInt(MM) == mm[i]){
			if(parseInt(DD)>31){return true;}
		}else{
			if(parseInt(DD)>30){return true;}
		}
	}
	if(parseInt(MM)>12){return true;}
   return false;}
