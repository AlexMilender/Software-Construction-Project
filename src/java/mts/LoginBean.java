package mts;
public class LoginBean 
{
    private String email;
    private String password;
    private String desig;

    public LoginBean() {
    }

    public LoginBean(String email, String password, String desig) {
        this.email = email;
        this.password = password;
        this.desig = desig;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDesig() {
        return desig;
    }

    public void setDesig(String desig) {
        this.desig = desig;
    }
   
}
