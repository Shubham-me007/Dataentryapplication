<%-- 
    Document   : Registration
    Created on : 26-Mar-2023, 11:40:35 pm
    Author     : Shubham kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta charset="utf-8">
		<title>Data entry application</title>
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

 input[type="text"]{
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;
            border: none;
            border-radius: 4px;
            background-color: #f2f2f2;
        }
::-webkit-input-placeholder
 { 
     color: #b9babd;
 }
input[type="submit"] {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 18px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
input[type="submit"]:hover {
            background-color: #45a049;
        }
.container {
            width: 30%;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 20px rgba(0,0,0,0.1);
}
  label {
            display: block;
            margin-bottom: 5px;
            color: #666;
        }
img {
     margin: 0 100% auto;
     width:50%;
     height:50%;
     border:1px solid #000;
     border-radius:4px;
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
                <div class="container">
<h2 align="center"><font color="red">Registration form</font></h2>
<table>
<tr>
<td>
<table>
    <form action="insertDB.jsp" method="post">
<tr>
<td>
<img src="iphoto.jpg"/> 
</td>
</tr>

<tr>
<td><label for="name">Name: </label></td>
<td><input maxlength="50" name="name" type="text" placeholder="enter your Name"/></td>
</tr>

<tr>
<td><label for="id">UID: </label></td>
<td><input maxlength="50" name="id" type="text" placeholder="please enter your UID" /></td>
</tr>

<tr>
<td><label for="course">Course: </label></td>
<td><input maxlength="50" name="course" type="text" placeholder="enter your Course"/></td>
</tr>

<tr>
<td><label for="branch">Branch: </label></td>
<td><input maxlength="50" name="branch" type="text" placeholder="enter your Branch"/></td>
</tr>

<tr>
  <td><label for="phone">Phone: </label></td>
  <td><input maxlength="50" name="phone" type="text" placeholder="enter your Phone no."/></td>
</tr>

<tr>
   <td align="center"><input name="Submit" type="Submit" value="SUBMIT" /></td>
</tr>
</table>
</td>
</tr>
</table>
</form>
</div> 
		</div> 
	</body>
</html>
