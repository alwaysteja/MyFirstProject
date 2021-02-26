package model;

public class User {
	
	public int ID;
	public String Fname;
	public String Lname;
	public String Branch;
	public long Phone;
	public String Email;
	public String City;
	public String State;
	public String Country;
	
	
	
	public User(int iD, String fname, String lname, String branch, long phone, String email, String city,
			String state, String country) {
		super();
		ID = iD;
		Fname = fname;
		Lname = lname;
		Branch = branch;
		Phone = phone;
		Email = email;
		City = city;
		State = state;
		Country = country;
	}
	public User(String fname, String lname, String branch, long phone, String email, String city, String state,
			String country) {
		super();
		Fname = fname;
		Lname = lname;
		Branch = branch;
		Phone = phone;
		Email = email;
		City = city;
		State = state;
		Country = country;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getFname() {
		return Fname;
	}
	public void setFname(String fname) {
		Fname = fname;
	}
	public String getLname() {
		return Lname;
	}
	public void setLname(String lname) {
		Lname = lname;
	}
	public String getBranch() {
		return Branch;
	}
	public void setBranch(String branch) {
		Branch = branch;
	}
	public long getPhone() {
		return Phone;
	}
	public void setPhone(long phone) {
		Phone = phone;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}

	

}






