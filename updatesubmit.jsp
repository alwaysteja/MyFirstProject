
<%@page import="java.sql.*,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    <%@ page import="java.sql.*" %>
    <html>
    <head><title>Submit</title></head>
    <body>
<% 
String ID=request.getParameter("ID");
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
int i=st.executeUpdate("UPDATE `teja` SET `ID`='"+ID+"',`First name`='"+Fname+"',`Last name`='"+Lname+"',`Branch`='"+Branch+"',`Phone`='"+Phone+"',`Email`='"+Email+"',`City`='"+City+"',`State`='"+State+"',`Country`='"+Country+"' WHERE ID="+ID);

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