<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Management System</title>

<style>


h1{
font-size:40px;
}
button:hover{
background-color:#0056b3;
}
body{
    font-family: Arial, sans-serif;
    
    text-align:center;
    

    
    background-image: url("https://static.vecteezy.com/system/resources/previews/015/685/152/large_2x/human-resource-management-strategic-planning-for-success-through-people-business-development-concept-by-choosing-professional-leaders-employee-competency-teamwork-man-pointing-virtual-icon-free-photo.jpg");


 }

.container{
    margin-top:120px;
}

h1{
    color:white;
}

a{
    display:inline-block;
    margin:15px;
    padding:12px 25px;
    text-decoration:none;
    background-color:#007BFF;
    color:white;
    border-radius:5px;
    font-size:18px;
}

a:hover{
    background-color:#0056b3;
}
</style>

</head>

<body>

<div class="container">

<h1>Employee Management System</h1>

 <a href="insert.jsp">Add Employee</a>
<a href="viewEmployees">View Employees</a>
<a href="deleteAll">Delete All</a>
<a href="fetchById.jsp">Fetch By ID</a>




</div>

</body>
</html>