<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="sidenav">
	<h3 id="logo">
		Administrative <br /> Gateway
	</h3>
	<c:url var="subjectsLink" value="AdminHeader">
		<c:param name="command" value="SUBJECTS" />
	</c:url>

	<c:url var="teachersLink" value="AdminHeader">
		<c:param name="command" value="TEACHERS" />
	</c:url>

	<c:url var="studentsLINK" value="AdminHeader">
		<c:param name="command" value="STUDENTS" />
	</c:url>

	<c:url var="classesLink" value="AdminHeader">
		<c:param name="command" value="CLASSES" />
	</c:url>
	
 

 
 	 
	
	<a class="bar-item" href="${subjectsLink}">Subjects</a> 
		<a class="bar-item" href="${teachersLink}">Teachers</a>
		<a class="bar-item" href="${studentsLink}">Students</a> 
		<a class="bar-item" href="${classesLink}">Classes</a> 
		<a class="bar-item" href="addnewStudent.jsp">AddStudent</a>
		<a class="bar-item" href="deleteStudent.jsp">DeleteStudent</a>
		<a class="bar-item" href="login.jsp">Log out</a>

</div>

