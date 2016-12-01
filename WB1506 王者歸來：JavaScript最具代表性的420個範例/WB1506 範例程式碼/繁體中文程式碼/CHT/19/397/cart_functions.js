//從cookie中讀出訂單資料
function cart_read(cookieName){
	var search = cookieName + "=";
	if (document.cookie.length > 0) {
		offset = document.cookie.indexOf(search);
		if (offset != -1) {
			offset += search.length;
			end = document.cookie.indexOf(";", offset);
			if (end == -1){
				end = document.cookie.length;
				return unescape(document.cookie.substring(offset, end));
			}
		}else{
			return false;
		}
	}else{
		return false;
	}
}

//加入商品至購物車
function cart_add(item_no,item_name,item_amount,item_price){
    var cookieString=document.cookie;
    if (cookieString.length>=2000){
        alert("您的訂單已滿\n請結束此次訂單動作後加入新訂單！");
    }else if(isNaN(item_amount)||item_amount<1||item_amount.indexOf('.')!=-1)    {
        alert("數量輸入錯誤！");
    }else{
        var mer_list=cart_read('petInfo');
		var today = new Date();
		var expires = new Date();
		expires.setTime(today.getTime() + 1000*60*60*24*30);     //有效期為30天
        var item_detail="|"+item_no+"&"+item_name+"&"+item_amount+"&"+item_price;
        if(mer_list==false){
            document.cookie="petInfo="+escape(item_detail)+";expires=" + expires.toGMTString();
            alert("“"+item_name+"”\n"+"已經加入您的訂單！");
			
        }else{
            if (mer_list.indexOf(item_no)!=-1){
                alert('此商品您已加入\n請修改購買數量！');
            }else{
                document.cookie="petInfo="+mer_list+escape(item_detail)+";expires=" + expires.toGMTString();
                alert("“"+item_name+"”\n"+"已經加入您的訂單！");
            }
        }
		window.location.href="cart.htm";
    }
}

//清理購物車
function cart_clear(){
var mer_list=cart_read('petInfo');
var expires = new Date();
expires.setTime(expires.getTime() - 1);
document.cookie="petInfo="+mer_list+";expires=" + expires.toGMTString();
window.location.href="cart_empty.htm";
}

//修改訂單更新cookie
function modifyCart(){
    var limit=cartForm.elements.length-5;
    if (cartForm.update.value=="修改訂單"){
        cartForm.update.value="更新訂單";
		 for (i=1;i<limit;i++){
            cartForm.elements[i].disabled=false;
            i=i+2;
            cartForm.elements[i].disabled=false;
        }
		cartForm.continueBuy.disabled=true;
		cartForm.clearCart.disabled=true;
    }else{
        cartForm.update.value="修改訂單"
		 for (i=1;i<limit;i++){
            cartForm.elements[i].disabled=true;
            i=i+2;
            cartForm.elements[i].disabled=true;
        }
		cartForm.continueBuy.disabled=false;
		cartForm.clearCart.disabled=false;
		window.location.reload();
	var today = new Date();
	var expires = new Date();
	expires.setTime(today.getTime() + 1000*60*60*24*30);     //有效期為30天
    var values=cartForm.cart.value
    document.cookie="petInfo="+escape(values)+";expires=" + expires.toGMTString();
    }
}

//移除單一商品
function Delete(TableID,id){
    var confirm_delete=window.confirm("確定要移除嗎？")
    if (confirm_delete){
        var deletedList=cartForm.cart.value;
        var split_deletedList=deletedList.split("|");
        for (i=1;i<split_deletedList.length;i++){
            if(split_deletedList[i].indexOf(id)!=-1) delete split_deletedList[i];
        }
        var new_deletedList="";
        for (i=1;i<split_deletedList.length;i++){
            if (split_deletedList[i]!=undefined){
				new_deletedList=new_deletedList+"|"+split_deletedList[i];
			}
        }
        cartForm.cart.value=new_deletedList;
        TableID.deleteRow();
    }
}

//更新單一商品的金額
function modifySubTotal(m_id,new_amount,price){
    var price=price*100;
    var new_subtotal=new_amount*price/100;
    var n_m_id="id"+m_id;

    if(isNaN(new_amount)||new_amount<1||new_amount.indexOf('.')!=-1){
        cartForm.elements[n_m_id].value="輸入錯誤";
    }else{
        cartForm.elements[n_m_id].value=new_subtotal;
    }
}

//計算合計金額
function modifyTotal(m_id,new_amount){
    if(isNaN(new_amount)||new_amount<1||new_amount.indexOf('.')!=-1){
        alert("數量填寫錯誤！")
        cartForm.elements["aid"+m_id].focus();
         cartForm.elements["aid"+m_id].select();
    }else{
        var the_list=cartForm.cart.value;
        var single_list=the_list.split("|")
        
        for (i=1;i<single_list.length;i++){
            if (single_list[i].indexOf(m_id)!=-1){
                var old_single=single_list[i];
                var split_single_list=single_list[i].split("&");
                split_single_list[2]=new_amount;
                var new_single=split_single_list[0]+"&"+split_single_list[1]+"&"+split_single_list[2]+"&"+split_single_list[3];
                the_list=the_list.replace(old_single,new_single);
            }
        }
        cartForm.cart.value=the_list;
    }
}