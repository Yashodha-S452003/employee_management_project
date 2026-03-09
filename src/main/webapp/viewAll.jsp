<%@page import="java.util.List"%>
<%@page import="employee_manage_crud.dto.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Employees</title>

<style>

body{
    font-family: Arial, sans-serif;
    background-color:#f2f2f2;
}

h2{
    text-align:center;
}

table{
    border-collapse: collapse;
    width:80%;
    margin:30px auto;
    background:white;
}

th, td{
    border:1px solid #ddd;
    padding:10px;
    text-align:center;
}

th{
    background-color:#007BFF;
    color:white;
}

a{
    padding:6px 12px;
    text-decoration:none;
    border-radius:4px;
}

.edit{
    background-color:#28a745;
    color:white;
}

.delete{
    background-color:#dc3545;
    color:white;
}
.back-btn{
    display:block;
    text-align:center;
    margin-top:20px;
}
</style>

</head>

<body>

<h2>Employee List</h2>

<table>

<tr>
<th>SI.No</th>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Department</th>
<th>Address</th>
<th>UPDATE</th>
<th>Delete</th>
</tr>

<%List<Employee> list=(List<Employee>)request.getAttribute("data"); %>
<%if(list!=null) {%>
<%int i=1; %>


<%for(Employee e:list){ %>
<tr>
<td><%=i++ %>   </td>
<td><%=e.getId() %></td>
<td><%=e.getName() %></td>
<td><%=e.getEmail() %></td>
<td><%=e.getDepartment() %></td>
<td><%=e.getAddress() %></td>
<td> <a href="edit.jsp?id=<%=e.getId() %>&&name=<%=e.getName() %>&&email=<%=e.getEmail() %>&&department=<%=e.getDepartment() %>&&address=<%=e.getAddress() %>">update</a> </td>
<td> <a href="delete?id=<%=e.getId() %>">delete</a> </td>
</tr>
<%} %>
<%} %>






</table>
<div class="back-btn">
<a href="index.jsp">Back</a>
</div>

</body>
</html>