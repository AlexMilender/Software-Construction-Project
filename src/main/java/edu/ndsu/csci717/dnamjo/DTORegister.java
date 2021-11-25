package edu.ndsu.csci717.dnamjo;

public class DTORegister {

   private String name; 
   private String companyName;
   private String registerId;
   private String mobileNumber;
   private String city;
   private String state;
   private String pinCode;
   private String panNumber;
   private String estYear;
   private String radioopt;
   private String radioopt1;
   private String file1;
   private String email;
   private String password;
   private String check;
   private String desig;

    public DTORegister() {
    }

    public DTORegister(String name, String companyName, String registerId, String mobileNumber, String city, String state, String pinCode, String panNumber, String estYear, String radioopt, String radioopt1, String file1, String email, String password, String check, String desig) {
        this.name = name;
        this.companyName = companyName;
        this.registerId = registerId;
        this.mobileNumber = mobileNumber;
        this.city = city;
        this.state = state;
        this.pinCode = pinCode;
        this.panNumber = panNumber;
        this.estYear = estYear;
        this.radioopt = radioopt;
        this.radioopt1 = radioopt1;
        this.file1 = file1;
        this.email = email;
        this.password = password;
        this.check = check;
        this.desig = desig;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getRegisterId() {
        return registerId;
    }

    public void setRegisterId(String registerId) {
        this.registerId = registerId;
    }

    public String getMobileNumber() {
        return mobileNumber;
    }

    public void setMobileNumber(String mobileNumber) {
        this.mobileNumber = mobileNumber;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getPinCode() {
        return pinCode;
    }

    public void setPinCode(String pinCode) {
        this.pinCode = pinCode;
    }

    public String getPanNumber() {
        return panNumber;
    }

    public void setPanNumber(String panNumber) {
        this.panNumber = panNumber;
    }

    public String getEstYear() {
        return estYear;
    }

    public void setEstYear(String estYear) {
        this.estYear = estYear;
    }

    public String getRadioopt() {
        return radioopt;
    }

    public void setRadioopt(String radioopt) {
        this.radioopt = radioopt;
    }

    public String getRadioopt1() {
        return radioopt1;
    }

    public void setRadioopt1(String radioopt1) {
        this.radioopt1 = radioopt1;
    }

    public String getFile1() {
        return file1;
    }

    public void setFile1(String file1) {
        this.file1 = file1;
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

    public String getCheck() {
        return check;
    }

    public void setCheck(String check) {
        this.check = check;
    }

    public String getDesig() {
        return desig;
    }

    public void setDesig(String desig) {
        this.desig = desig;
    }

    @Override
    public String toString() {
        return "DTORegister{" + "name=" + name + ", companyName=" + companyName + ", registerId=" + registerId + ", mobileNumber=" + mobileNumber + ", city=" + city + ", state=" + state + ", pinCode=" + pinCode + ", panNumber=" + panNumber + ", estYear=" + estYear + ", radioopt=" + radioopt + ", radioopt1=" + radioopt1 + ", file1=" + file1 + ", email=" + email + ", password=" + password + ", check=" + check + ", desig=" + desig + '}';
    }

    
}