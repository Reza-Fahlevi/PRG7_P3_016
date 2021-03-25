package registration.model;

import java.io.Serializable;
import java.util.Hashtable;

public class UserData implements Serializable {
    private String firstName;
    private String lastName;
    private String emailUser;
    private String userName;
    private String password1;
    private String password2;
    private String[] checkList;
    private Hashtable error;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmailUser() {
        return emailUser;
    }

    public void setEmailUser(String emailUser) {
        this.emailUser = emailUser;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword1() {
        return password1;
    }

    public void setPassword1(String password1) {
        this.password1 = password1;
    }

    public String getPassword2() {
        return password2;
    }

    public void setPassword2(String password2) {
        this.password2 = password2;
    }

    public UserData(){
        firstName="";
        lastName="";
        emailUser="";
        userName="";
        password1="";
        password2="";
        error = new Hashtable();
    }

    public void setError(String key, String msg){
        error.put(key, msg);
    }

    public boolean validate(){
        boolean sign = true;

        if(!password1.equals(password2)){
            error.put("password2", "The password is not same!");
            password2="";
            sign=false;
        }
        return sign;
    }

    public String getErrorMesage(String s){
        String errorMessage = (String) error.get(s.trim());
        return (errorMessage==null)?"":errorMessage;
    }
}
