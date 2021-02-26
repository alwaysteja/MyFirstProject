<%@page import="model.User"%>
<%@page import="service.Service"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.List"%>
<%
int i=Integer.parseInt(request.getParameter("id"));
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");
System.out.println("Connection Success");%>
<!DOCTYPE html>  
<html>  
<head>  

<meta name="viewport" content="width=device-width, initial-scale=1">  
<style>  
body{  
  font-family: Calibri, Helvetica, sans-serif;  
  background-color: pink;  
}  
.container {  
    padding: 50px;  
  background-color: lightblue;  
}  
  
input[type=text], input[type=password], textarea {  
  width: 100%;  
  padding: 15px;  
  margin: 5px 0 22px 0;  
  display: inline-block;  
  border: none;  
  background: #f1f1f1;  
}  
input[type=text]:focus, input[type=password]:focus {  
  background-color: orange;  
  outline: none;  
}  
 div {  
            padding: 10px 0;  
         }  
hr {  
  border: 1px solid #f1f1f1;  
  margin-bottom: 25px;  
}  
.registerbtn {  
  background-color: #4CAF50;  
  color: white;  
  padding: 16px 20px;  
  margin: 8px 0;  
  border: none;  
  cursor: pointer;  
  width: 100%;  
  opacity: 0.9;  
}  
.registerbtn:hover {  
  opacity: 1;  
}  
</style>  
</head>  
<body>

<% PreparedStatement preparedstatement=conn.prepareStatement("SELECT * FROM `teja` WHERE ID="+i);
	System.out.println(preparedstatement);
	ResultSet rs=preparedstatement.executeQuery();
	
	while(rs.next()){
%>

	<form action="updatesubmit.jsp" method="post" >
				<h1>Student Details Editing Form</h1>
			<hr>
			<label> ID : </label> <input type="text" name="ID"   value=<%=rs.getString("ID") %>>

			<label> Firstname </label> <input type="text" name="firstname"  value=<%=rs.getString("First name") %> size="15" required /> <label>
				Lastname: </label> <input type="text" name="lastname" value=<%=rs.getString("Last name") %>
				size="15" required />
			<label>
				Branch: </label> <input type="text" name="branch" value=<%=rs.getString("Branch") %>
				size="15" required />
			<div>
				<label> Phone : </label> <input type="text" name="phone"
					value=<%=rs.getString("Phone") %> size="10" / required> <label
					for="email">
					<b>Email</b></label> <input type="text"
					placeholder="Enter Email" name="email" value=<%=rs.getString("Email") %> required> <label
					for="City"><b>City</b></label> <input type="text"
					placeholder="Enter Your City" name="City" value=<%=rs.getString("City") %> required> <label
					for="State"><b>State</b></label> <input type="text"
					placeholder="Enter your State Name" name="State" value=<%=rs.getString("State") %> required>
				<label for="Country"><b>Contry</b></label> <input type="text"
					placeholder="Contry" name="Country" value=<%=rs.getString("Country") %> required>
				<button type="submit" class="registerbtn">Register</button>
				</div>
				<%}
	}
	catch (Exception e){
		e.printStackTrace();
	}
	
%>
	</form>
</body>  
</html>  