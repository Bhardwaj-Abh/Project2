<%@page import="com.simplilearn.admin.ConnectionProvider" %>
<%@page import="java.sql.*" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Student Student</title>
<link rel="stylesheet" href="css/addstudent.css">
</head>


<body>

<form action="deletestudentaction.jsp" method="post"></form>


<center><h1>DELETE STUDENT</h1></center>



<div class ="left-div">


<h3>Enter student name</h3>
<input  class="input-style" type="text" name ="fname" placeholder="Enter first name" required>
<hr>

</div>

<div class="right-div">
<h3>Enter student name</h3>
<input class="input-style" type="text" name ="lname" placeholder="Enter last name" required>
<hr>
</div>



<div class="left-div">
<h3>  Enter student age  </h3>
<input class="input-style" type="number" name ="age" placeholder="Enter age" required>
<hr>
</div>

<div class="right-div">
<h3>   Enter student class </h3>
<input class="input-style" type="number" name ="aclass" placeholder="Enter aclass" required>
<hr>
</div>

<button class="button">Confirm Delete<i class='far fa-arrow-alt-circle-right'></i></button>

















</body>
</html>