<%-- 
    Document   : insertDB
    Created on : 27-Mar-2023, 12:29:54 am
    Author     : Shubham kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String name = request.getParameter("name");
String id = request.getParameter("id");
String course = request.getParameter("course");
String branch = request.getParameter("branch");
String phone = request.getParameter("phone");

Connection conn = null;
PreparedStatement stmt = null;
String sql = "INSERT INTO SHUB123.regtable(name,id,course,branch,phone) values(?, ?, ?, ?, ?)";

try {
Class.forName("oracle.jdbc.driver.OracleDriver");
conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system1");
stmt = conn.prepareStatement(sql);
stmt.setString(1, name);
stmt.setString(2, id);
stmt.setString(3, course);
stmt.setString(4, branch);
stmt.setString(5, phone);
stmt.executeUpdate();
stmt.close();
conn.close();
response.sendRedirect("userdata.jsp");
} catch (SQLException se) {
se.printStackTrace();
} catch (Exception e) {
e.printStackTrace();
} finally {
try {
if (stmt != null) stmt.close();
if (conn != null) conn.close();
} catch (SQLException se) {
se.printStackTrace();
}
}
%>

