package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.User;



public class StudentDao {

	
	public String url="jdbc:mysql://localhost:3306/student";
	public String username="root";
	public String pass="";
	
	
public static final String insert="INSERT INTO `teja`"+"(`ID`, `First name`, `Last name`, `Branch`, `Phone`, `Email`, `City`, `State`, `Country`)"+" VALUES "+"(?,?,?,?,?,?,?,?,?);";
   public static final String selectAll="SELECT * FROM teja";
   public static final String selectbyid="SELECT * FROM `teja` WHERE ID=?";
   public static final String update="UPDATE `teja` SET `ID`=?,`First name`=?,`Last name`=?,`Branch`=?,`Phone`=?,`Email`=?,`City`=?,`State`=?,`Country`=? WHERE ID= ?;";
  public static final String delete= "DELETE FROM `teja`HERE ID=?;";
 
  public Connection getConnection() {
	  Connection connection=null;
	  try {
		  Class.forName("com.mysql.cj.jdbc.Driver");
		  connection=DriverManager.getConnection(url,username,pass);
		  System.out.println("Connection Success");
		 
		 }
	  catch (SQLException e){
		  e.printStackTrace();
		  }
	catch (ClassNotFoundException e) {
		 e.printStackTrace();
		
	}
	  return connection;
  }
	  
	 public void insertUser(User user) throws SQLException {
		try( Connection connection=getConnection();
				PreparedStatement preparedstatement=connection.prepareStatement(insert)){
			 preparedstatement.setInt(1, user.getID());
			  preparedstatement.setString(2, user.getFname());
			  preparedstatement.setString(3, user.getLname());
			  preparedstatement.setString(4, user.getBranch());
			  preparedstatement.setLong(5, user.getPhone());
			  preparedstatement.setString(6, user.getEmail());
			  preparedstatement.setString(7, user.getCity());
			  preparedstatement.setString(8, user.getState());
			  preparedstatement.setString(9, user.getCountry());
		      preparedstatement.executeUpdate();
		      
					
				} catch (Exception e){
					e.printStackTrace();
				}
	 }
public boolean updateuser(User user) throws SQLException {
			 boolean rowupdated;
		 
				try( Connection connection=getConnection();
						PreparedStatement statement=connection.prepareStatement(update);){
					 statement.setInt(1, user.getID());
					 statement.setString(2, user.getFname());
					  statement.setString(3, user.getLname());
					  statement.setString(4, user.getBranch());
					  statement.setLong(5, user.getPhone());
					  statement.setString(6, user.getEmail());
					  statement.setString(7, user.getCity());
					  statement.setString(8, user.getState());
					 statement.setString(9, user.getCountry());
				     
				     
				     rowupdated=statement.executeUpdate()>0;
				}
				return rowupdated;
}
public User selectuser(int ID) {
	User user=null;
	
try(Connection connection=getConnection();
	PreparedStatement preparedstatement=connection.prepareStatement(selectbyid);){
	preparedstatement.setInt(1,ID);
	System.out.println(preparedstatement);
	
	ResultSet rs=preparedstatement.executeQuery();
	
	while(rs.next())
	{
		 int ID1=rs.getInt("ID");
		 String fname=rs.getString("First name");
		 String Lname=rs.getString("Last name");
		 String branch=rs.getString("Branch");
		 long Phone=rs.getLong("Phone");
		 String Email=rs.getString("Email");
		 String city=rs.getString("City");
		 String State=rs.getString("State");
		 String Country=rs.getString("Country");
		 user=new User(ID1,fname,Lname,branch,Phone,Email,city,State,Country);

	}}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return user;
}
public List<User> selectAllUser(){
	List<User> users=new ArrayList<>();
	
try(Connection connection=getConnection();
	PreparedStatement preparedstatement=connection.prepareStatement(selectAll);){
	System.out.println(preparedstatement);
	
	ResultSet rs=preparedstatement.executeQuery();
	
	while(rs.next())
	{
		 int ID1=rs.getInt("ID");
		 String fname=rs.getString("First name");
		 String Lname=rs.getString("Last name");
		 String branch=rs.getString("Branch");
		 long Phone=rs.getLong("Phone");
		 String Email=rs.getString("Email");
		 String city=rs.getString("City");
		 String State=rs.getString("State");
		 String Country=rs.getString("Country");
		 users.add(new User(ID1,fname,Lname,branch,Phone,Email,city,State,Country));
		

	}}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return users;
}
public boolean deleteuser(User user) throws SQLException {
	 boolean rowdeleted;

		try( Connection connection=getConnection();
				PreparedStatement statement=connection.prepareStatement(delete);){
			 statement.setInt(1, user.getID());
		     
		     rowdeleted=statement.executeUpdate()>0;
		}
		return rowdeleted;
}

}



	 

	 

	  
  



