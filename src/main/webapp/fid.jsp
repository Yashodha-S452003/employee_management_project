<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Employee Details</title>

<style>

body{
    font-family: Arial;
}

table{
    border-collapse: collapse;
    margin: auto;
    margin-top: 40px;
}

th,td{
    border:1px solid black;
    padding:10px 20px;
}

th{
    background-color:#f2f2f2;
}

h2{
    text-align:center;
}

.back-btn{
    display:block;
    text-align:center;
    margin-top:20px;
}

</style>

</head>

<body>

<h2>Employee Details</h2>

<table>



<tr>
<th>Employee ID</th>
<td>${employee.id}</td>
</tr>

<tr>
<th>Name</th>
<td>${employee.name}</td>
</tr>

<tr>
<th>Email</th>
<td>${employee.email}</td>
</tr>

<tr>
<th>Department</th>
<td>${employee.department}</td>
</tr>



<tr>
<th>Address</th>
<td>${employee.address}</td>
</tr>

</table>

<div class="back-btn">
<a href="viewEmployees">Back</a>
</div>

</body>
</html>