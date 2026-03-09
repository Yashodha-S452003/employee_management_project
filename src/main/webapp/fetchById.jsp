<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style >
body{
    font-family: Arial, sans-serif;
    background-color:#f2f2f2;
    text-align:center;
}
.back-btn{
    display:block;
    text-align:center;
    margin-top:20px;
}
button{
width:100px;
height:35px}
body{
    font-family: Arial;
}
input{
    width:25%;
    height:25px;
    padding:8px;
    margin:8px 0;
    border-radius: 8px;
    
}

</style>
</head>
<body>
<div align="center"> 
<form action="fetchById">
	<h2>FETCH BY ID</h2>
	<input type="number" name="id" placeholder="enter the id"><br>
	<button type="submit" >submit</button><br>
	</form>
	</div>
	<div class="back-btn">
<a href="index.jsp">Back</a>
</div>
</body>
</html>