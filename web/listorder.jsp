<%-- 
    Document   : listorder
    Created on : Dec 14, 2018, 7:49:32 AM
    Author     : admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@ 
page import="order.dbcon" 
%>

<%



%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
table, th, td {
  border: 1px solid black;
}
</style>
    </head>
    <body>
        <h1>list of order item</h1>
        <br>
        <table style="width: 30%">
              <tr>
                <th>No.</th>
                <th>Ordered item</th> 
                <th>Quantity</th>
              </tr>
              <%
                  dbcon db = dbcon.getInstance();
                  try{
        Statement st=db.getdbcon();
        ResultSet rs=st.executeQuery("SELECT * FROM `order`;");
        while(rs.next()){
            
            out.print("<tr>");
            out.print("<th>"+rs.getInt("order_id")+"</th>");
            out.print("<th>"+rs.getString("item_name")+"</th>");
            out.print("<th>"+rs.getInt("item_quantity")+"</th>");
            out.print("</tr>");
        } 
        }
		catch(Exception e) {
			System.out.println(e);
//                        resp.sendRedirect("login.jsp");
			
        }
              
              %>
            </table>
    </body>
</html>
