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
	<form action="Submit.jsp" method="post" >
				<h1>Student Registeration Form</h1>
			<hr>

			<label> Firstname </label> <input type="text" name="firstname"
				placeholder="Firstname" size="15" required /> <label>
				Lastname: </label> <input type="text" name="lastname" placeholder="Lastname"
				size="15" required />
			<label>
				Branch: </label> <input type="text" name="branch" placeholder="Branch"
				size="15" required />
			<div>
				<label> Phone : </label> <input type="text" name="phone"
					placeholder="phone no." size="10" / required> <label
					for=email"><b>Email</b></label> <input type="text"
					placeholder="Enter Email" name="email" required> <label
					for="City"><b>City</b></label> <input type="text"
					placeholder="Enter Your City" name="City" required> <label
					for="State"><b>State</b></label> <input type="text"
					placeholder="Enter your State Name" name="State" required>
				<label for="Country"><b>Contry</b></label> <input type="text"
					placeholder="Contry" name="Country" required>
				<button type="submit" class="registerbtn">Register</button>
				</div>
	</form>
</body>  
</html>  