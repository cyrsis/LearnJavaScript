package com;
import java.sql.*;
public class ConnDB{
                Connection conn=null;
                Statement stmt=null;
                ResultSet rs=null;
        public ConnDB(){
                try{
                        Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
                }catch(java.lang.ClassNotFoundException e){
                        System.err.println(e.getMessage());
                }
        }
 /***************************************************
        *method name:	executeQuery()
        *功能:執行查詢動作
        *return value: ResultSet
        *2006-12-05
****************************************************/
        public ResultSet executeQuery(String sql){
                try{
                        conn=DriverManager.getConnection("jdbc:microsoft:sqlserver://localhost:1433;DatabaseName=db_database16;user=sa;password=");
                        stmt=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
                        rs=stmt.executeQuery(sql);
                }catch(SQLException ex){
                        System.err.println(ex.getMessage());
                        }
                return rs;
        }
/***************************************************
         *method name:	executeUpdate()
         *功能:執行更新動作
         *return value: int
         *2006-12-05
****************************************************/

        public int executeUpdate(String sql){
                int result=0;
                try{
                        conn=DriverManager.getConnection("jdbc:microsoft:sqlserver://localhost:1433;DatabaseName=db_db_database16;user=sa;password=");
                        stmt=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
                        result=stmt.executeUpdate(sql);
                }catch(SQLException ex){
                        result=0;
                        }
                return result;
        }
 /***************************************************
        *method name:	close()
        *功能:關閉資料庫連結
        *return value: 	void
        *2006-12-05
****************************************************/
       public void close(){
         try {
           if (rs != null) rs.close();
         }
         catch (Exception e) {
           e.printStackTrace(System.err);
         }
         try {
           if (stmt != null) stmt.close();
         }
         catch (Exception e) {
           e.printStackTrace(System.err);
         }
         try {
           if (conn != null) {
             conn.close();
           }
         }
         catch (Exception e) {
           e.printStackTrace(System.err);
         }
       }

/***************************************************
        *method name:	chStr_In()
        *method function:	change coding "'" to Char(1)
        *return value:  String
        *2006-12-05
****************************************************/
        public String chStr_In(String str){
        if(str==null){
                str="";
        }else{
                try{
                        str=(new String(str.getBytes("iso-8859-1"),"utf-8")).trim();
                        str=str.replace('\'',(char)1);
                }catch(Exception e){
                        e.printStackTrace(System.err);
                }
        }
        return str;
}
/***************************************************
       *method name:	chStr_Out()
       *method function:	change coding Char(1) to "'"
       *return value:  String
       *2006-12-05
****************************************************/
      public String chStr_Out(String str){
              if(str==null){
                      str="";
              }else{
                      try{
                              str=str.replace((char)1,'\'');
                      }catch(Exception e){
                              e.printStackTrace(System.err);
                      }
              }
              return str;
      }
}
