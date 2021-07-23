package user;

import java.io.Serializable;

//To persist the data for future use,
//implement serializable
public class ValidateManager implements Serializable {
 private String name, password;

 // Methods to set userid and password 
 // according to form data
 public void setName(String name) { this.name = name; }
 public void setPassword(String password) { this.password = password; }

 // Methods to obtain back the values set 
 // by setter methods
 public String getUser() { return name; }
 public String getPass() { return password; }

 // Method to validate a user
 public boolean validate(String u1, String p1)
 {
     if (u1.equals(name) && p1.equals(password))
         return true;
     else
         return false;
 }
}