<%-- 
    Document   : userdata
    Created on : 26-Mar-2023, 11:39:38 pm
    Author     : Shubham kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta charset="utf-8">
		<title>User Data</title>
                <style>
body {
  font-family: Arial, sans-serif;
  background: url("wh.jpg") center no-repeat fixed;
  background-size: 100% 100%;
       }
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color: #111;
}
table {
  border-collapse: collapse;
  width: 100%;
}
th, td {
  border: 1px solid black;
  padding: 8px;
  text-align: left;
  padding: 10px 18px;
  margin: 6px 0;
}

th {
  background-color: #ddd;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}

               </style>
	</head>
	
	<body>
		<ul>
			<li><a href="Registration.jsp">Registration</a></li>
			<li><a href="userdata.jsp">User Data</a></li>
			<li><a href="index.jsp">logout</a></li>
		</ul>
		<br>
		<div>
            <div>
                <h3>User Data Table</h3>
                </div>
            </div>
            <div>
                <table>
                  <thead>
                    <tr>
		     <th>Name</th>
		     <th>UID</th>
		     <th>Course</th>
                     <th>Branch</th>  
                     <th>Phone</th> 
		     <th>Action</th>
                    </tr>
                  </thead>
                  <tbody>
<%@ page import="java.sql.*" %>
<%
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system1");
        String sql = "select * from SHUB123.regtable";
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();
        while (rs.next()) {
             for (int i = 1; i <= 20; i++ ) {
            out.print("<tr>");
            out.println("<td>" + rs.getString("name") + "</td>");
            out.println("<td>" + rs.getString("id") + "</td>");
            out.println("<td>" + rs.getString("course") + "</td>");
            out.println("<td>" + rs.getString("branch") + "</td>");
            out.println("<td>" + rs.getString("phone") + "</td>");
            out.print("<td>");
            out.print("<a href=\"userdelete.jsp?id=" + rs.getString("id") + "\">Delete</a>");
            out.print("</td>");
            out.print("</tr>");
            rs.next();
    }
        }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (pstmt != null) {
            try {
                pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>
                  </tbody>
		</table>
		</div>
		</div> 
	</body>
</html>
