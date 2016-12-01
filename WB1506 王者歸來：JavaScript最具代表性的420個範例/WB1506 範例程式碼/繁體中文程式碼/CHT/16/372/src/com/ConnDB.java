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
****************************************************/
        public ResultSet executeQuery(String sql){
                try{
                        conn=DriverManager.getConnection("jdbc:microsoft:sqlserver://localhost:1433;DatabaseName=db_database16;user=sa;password=");
                        stmt=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
                        rs=stmt.executeQuery(sql);
                }catch(SQLException ex){
                        System.err.println(ex.getMessage());
                        }finally{}
                return rs;
        }
/***************************************************
         *method name:	executeUpdate()
         *功能:執行更新動作
         *return value: int
****************************************************/

        public int executeUpdate(String sql){
                int result=0;
                try{
                        conn=DriverManager.getConnection("jdbc:microsoft:sqlserver://localhost:1433;DatabaseName=db_database16;user=sa;password=");
                        stmt=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
                        result=stmt.executeUpdate(sql);
                }catch(SQLException ex){
                        result=0;
                        }finally{}
                return result;
        }
 /***************************************************
        *method name:	close()
        *功能:關閉資料庫連結
        *return value: 	void
****************************************************/
       public void close(){
         try {
           if (rs != null) rs.close();
         }
         catch (Exception e) {
           e.printStackTrace(System.err);
         }finally{}
         try {
           if (stmt != null) stmt.close();
         }
         catch (Exception e) {
           e.printStackTrace(System.err);
         }finally{}
         try {
           if (conn != null) {
             conn.close();
           }
         }
         catch (Exception e) {
           e.printStackTrace(System.err);
         }finally{}
       }
}
