<%-- 
    Document   : userdelete
    Created on : 27-Mar-2023, 2:40:56 am
    Author     : Shubham kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String id=request.getParameter("id");
Connection conn = null;
PreparedStatement stmt = null;

String sql = "DELETE FROM SHUB123.regtable WHERE id = ?";
try {
Class.forName("oracle.jdbc.driver.OracleDriver");
conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system1");
stmt = conn.prepareStatement(sql);
stmt.setString(1, id);
stmt.executeUpdate();
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

