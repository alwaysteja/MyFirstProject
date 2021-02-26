<%@page import="dao.StudentDao"%>
<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
    <%@page import="model.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DELETE</title>
</head>
<body>
<%
int dlt = Integer.parseInt(request.getParameter("id1"));
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "");
System.out.println("DELETE Connection Success");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM `teja` WHERE ID="+dlt); 
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