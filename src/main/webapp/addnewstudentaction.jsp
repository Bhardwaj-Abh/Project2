<%@page import="com.simplilearn.admin.ConnectionProvider" %>
<%@page import="java.sql.*" %>
         
         
 <%
 String id=request.getParameter("id");         
 String fname=request.getParameter("fname");        
 String lname=request.getParameter("lname");             
 String age=request.getParameter("age");        
 String aclass=request.getParameter("aclass");        
         
         
    try
    {
    	Connection con=ConnectionProvider.getCon();
    	PreparedStatement ps =con.prepareStatement("insert into students values(?,?,?,?,?)");
    	ps.setString(1,id);
    	ps.setString(2,fname);
    	ps.setString(3,lname);
    	ps.setString(4,age);
    	ps.setString(5,aclass);
    	ps.executeUpdate();
    	response.sendRedirect("addnewStudent.jsp?msg=done");
    	
    }
         
        catch(Exception e) 
    {
        	response.sendRedirect("addnewStudent.jsp?msg=wrong");	
        	
    }
         
         
         
         
         
         
         
         
         
         
         
   %>