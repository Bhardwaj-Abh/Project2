<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
 
<html>
   <head>
      <title>Add Student</title>
   </head>
   
   <body style="background-image: url('css/image/pp.png');">
   
   <center><h1  style="color: yellow;"> Student added Successfully</h1></center>
      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/administrative-portal"
         user = "root"  password = "Kinleywater22"/>
         <sql:update dataSource = "${snapshot}" var = "result">
         INSERT INTO students VALUES (11, 'Gaurav', 'Kapoor',25,1);
      </sql:update>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from students;
      </sql:query>
 
      <table border = "2" width = "100%">
         <tr>
            <th>id</th>
            <th>fname</th>
            <th>lName</th>
            <th>age</th>
            <th>class</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.id}"/></td>
               <td><c:out value = "${row.fname}"/></td>
               <td><c:out value = "${row.lname}"/></td>
               <td><c:out value = "${row.age}"/></td>
               <td><c:out value = "${row.Class}"/></td>
            </tr>
         </c:forEach>
      </table>
 
   </body>
</html>