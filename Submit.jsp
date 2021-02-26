
<%@page import="java.sql.*,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    <%@ page import="java.sql.*" %>
    <html>
    <head><title>Submit</title></head>
    <body>
<% 

String Fname=request.getParameter("firstname");
String Lname=request.getParameter("lastname");
String Branch=request.getParameter("branch");
String Phone=request.getParameter("phone");
String Email=request.getParameter("email");
String City=request.getParameter("City");
String State=request.getParameter("State");
String Country=request.getParameter("Country");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");
System.out.println("Connection Success");
Statement st=conn.createStatement();
int i=st.executeUpdate("INSERT INTO `teja`"+"( `First name`, `Last name`, `Branch`, `Phone`, `Email`, `City`, `State`, `Country`)"+" VALUES "+"('"+Fname+"','"+Lname+"','"+Branch+"','"+Phone+"','"+Email+"','"+City+"','"+State+"','"+Country+"')");
response.sendRedirect("index.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</body>
</html>