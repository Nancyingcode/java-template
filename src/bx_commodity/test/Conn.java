package bx_commodity.test;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Connection;

public class Conn {
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
    static final String DB_URL = "jdbc:mysql://localhost:3306/db?useUnicode=true&characterEncoding=UTF-8";
 
    // 数据库的用户名与密码，需要根据自己的设置
    static final String USER = "root";
    static final String PASS = "123456";

    Print prt = new Print("db");
    public static Connection create(){
        java.sql.Connection conn = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL,USER,PASS);
            System.out.print("连接成功");
        }catch(Exception e){
            e.printStackTrace();
            System.out.print("连接失败");
        }
        return conn;
    }

    public static void close(Connection conn){
        try{
           conn.close();        
        }catch(Exception e){
            e.printStackTrace();
        }
    }

}