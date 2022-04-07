<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
 
<html>
   <head>
      <title>DELETE Operation</title>
   </head>
   
    <body style="background-image: url('css/image/pp.png');">
   
   <center><h1  style="color: yellow;"> Student Deleted Successfully</h1></center>
      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/administrative-portal"
         user = "root" password = "Kinleywater22"/>
 
      <c:set var = "id" value = "5"/>
 
      <sql:update dataSource = "${snapshot}" var = "count">
         DELETE FROM students WHERE id = ?
         <sql:param value = "${id}" />
      </sql:update>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from students;
      </sql:query>
 
      <table border = "2" width = "100%">
         <tr>
            <th>Id</th>
            <th>First name</th>
            <th>Last name</th>
            <th>Age</th>
            <th>Class</th>
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