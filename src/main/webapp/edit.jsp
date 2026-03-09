<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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

<h2>update Employee</h2>

<form action="update" method="post">


<input type="number" name="id" value="<%=request.getParameter("id")%>" required hidden="">

<label>Employee Name</label>
<input type="text" name="name" value="<%=request.getParameter("name") %>" required>

<label>Email</label>
<input type="email" name="email" value="<%=request.getParameter("email") %>" required>

<label>Department</label>
<input type="text" name="department" value="<%=request.getParameter("department") %> ">

<label>Address:</label>
<textarea name="address" rows="4" cols="30" value="<%=request.getParameter("address") %>" ></textarea>

<center>
<button type="submit">update </button>
</center>

</form>


</div>
<div class="back-btn">
<a href="viewEmployees">Back</a>
</div>

</body>
</html>