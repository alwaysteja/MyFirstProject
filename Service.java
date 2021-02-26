package service;


import java.sql.SQLException;
import java.util.List;


import dao.StudentDao;
import model.User;

public class Service {



		
		public List<User> getAllUsers(){
			return new StudentDao().selectAllUser();
			
		}
		public User getById(int Id) {
			return new StudentDao().selectuser(Id);
		}
		
		public void insertUser(User user) throws SQLException {
			try{new StudentDao().insertUser(user);}
		catch (SQLException e) {
			e.printStackTrace();
		}
			
		
		}
public boolean deleteUser(User user) throws Exception{
	try{new StudentDao().deleteuser(user);}
		catch (SQLException e) {
			e.printStackTrace();
		}
	return false;
			
		}
		
		public static void main(String args[]) {
	      User us=new Service().getById(2020001);
	      System.out.println(us.Fname);
				
			
			
			

		
			}
			
				
			}
			
			
		
		

		



