package com.core;
public class ChStr {
/***************************************************
 *功能：解決輸出中文亂碼問題，傳回值為String
***************************************************/
        public String chStr(String str){
           if(str==null){
                str="";
           }else{
                try{
str=(new String(str.getBytes("iso-8859-1"),"utf-8")).trim();
              }catch(Exception e){
                   e.printStackTrace(System.err);
              }
           }
           return str;
         }
/***************************************************
 *功能：顯示文字中的換行換行、空格，傳回值為String
***************************************************/
       public String convertStr(String str1){
           if(str1==null){
            str1="";
          }else{
            try{

              str1=str1.replaceAll(" ","&nbsp;");
              str1=str1.replaceAll("\r\n","<br>");
            }catch(Exception e){
                   e.printStackTrace(System.err);
            }
         }
         return str1;
     }
}

