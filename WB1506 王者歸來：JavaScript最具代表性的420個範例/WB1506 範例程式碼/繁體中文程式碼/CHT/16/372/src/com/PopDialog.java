package com;

public class PopDialog {
/*****************************
  *功能：傳回出現提示交談視窗並重新導向網頁到指定頁面的字串
  *message：指定要顯示的提示訊息
  *url：指定重導至的頁面
******************************/
    public String messageBox(String message,String url){
        String str="<script language='javascript'>alert('"+message+"');";
        str=str+"window.location.href='"+url+"';</script>";
        return str;
    }
}
