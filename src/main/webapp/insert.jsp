<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee</title>

<style>

body{
    font-family: Arial, sans-serif;
    background-color:#f2f2f2;
}

.container{
    width:400px;
    margin:80px auto;
    padding:25px;
    background:white;
    border-radius:8px;
    box-shadow:0px 0px 10px gray;
    padding-right: 45px;
    background-color: gray;
}

h2{
    text-align:center;
}

input,textarea{
    width:100%;
    padding:8px;
    margin:8px 0;
    border-radius: 8px;
    border:none;
}

button{
    width:50%;
    padding:10px;
    background-color:blue;
    color:white;
    border:none;
    border-radius:4px;
    font-size:16px;
    position: relative;
    right: 50;
}

button:hover{
    background-color:#218838;
}
.back-btn{
    display:block;
    text-align:center;
    margin-top:20px;
}

</style>

</head>

<body>

<div class="container">

<h2>Add Employee</h2>

<form action="saveEmployee" method="post">

<label>Employee ID</label>
<input type="number" name="id" required>

<label>Employee Name</label>
<input type="text" name="name" required>

<label>Email</label>
<input type="email" name="email" required>

<label>Department</label>
<input type="text" name="department" required>

<label>Address:</label>
<textarea name="address" rows="4" cols="30"></textarea>

<center>
<button type="submit">Save Employee</button>
</center>

</form>

</div>
<div class="back-btn">
<a href="index.jsp">Back</a>
</div>

</body>
</html>