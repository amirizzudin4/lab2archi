/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package order;

import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import javax.servlet.http.HttpServlet;
/**
 *
 * @author admin
 */
public class dbcon extends HttpServlet{
    private static dbcon sqlconn=null;
    private Connection conn=null;
    private Statement st=null;
    
    private dbcon()
    {
        
    }
    
    public static dbcon getInstance() 
    {
        if (sqlconn==null)
        {
            sqlconn=new dbcon();
        }
        return sqlconn;
    }
    
    public Statement getdbcon()
    {
        String driver="com.mysql.jdbc.Driver";
        String url="jdbc:mysql://localhost:3306/";
        String dbName="archilab2";
        String username="root";
        String pwd="";
        
        try{
            Class.forName(driver);
            conn=DriverManager.getConnection(url+dbName,username,pwd);
            st=conn.createStatement();
            System.out.println("sale");
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        
        System.out.println("sale");
        return st;
    }
}
