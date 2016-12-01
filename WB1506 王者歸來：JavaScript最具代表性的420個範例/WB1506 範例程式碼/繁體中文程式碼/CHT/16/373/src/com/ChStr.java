package com;
public class ChStr {
        /***************************************************
                *method name:	chStr()
                *method function:解決輸出中文亂碼問題
                *return value:  String
                *2006-01-08
        ****************************************************/
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
          *method name:convertStr()
          *method function:顯示文字中的換行換行、空格及確保HTML標示的標準輸出
          *return value:  String
          * author:wgh
          *2006-01-08
        ****************************************************/
       public String convertStr(String str1){
           if(str1==null){
               str1="";
           }else{
               try{
                 //replaceAll(String str1,String str2)方法為JDK1.4.x的新方法，使用str2置換字串中的所有str2字串
                 str1=str1.replaceAll("<","&lt;");//置換字串中的"<"和">"字元，確保HTML標示的標準輸出
                 str1=str1.replaceAll(">","&gt;");
                 str1=str1.replaceAll(" ","&nbsp;");
                 str1=str1.replaceAll("\r\n","<br>");
               }catch(Exception e){
                       e.printStackTrace(System.err);
               }
           }
           return str1;
       }
}
