package mts;
public class DTOTenderForm 
{
    private String tenderId;
    private String companyName;
    private String companyRegisterNumber;
    private String location;
    private int pincode;
    private String panNumber;
    private int experience;
    private double quoteAmount;

    public DTOTenderForm() {
    }
    
    public DTOTenderForm(String tenderId, String companyName, String companyRegisterNumber, String location, String panNumber, int experience, double quoteAmount) {
        this.tenderId = tenderId;
        this.companyName = companyName;
        this.companyRegisterNumber = companyRegisterNumber;
        this.location = location;
        this.panNumber = panNumber;
        this.experience = experience;
        this.quoteAmount = quoteAmount;
    }

    public String getTenderId() {
        return tenderId;
    }

    public void setTenderId(String tenderId) {
        this.tenderId = tenderId;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getCompanyRegisterNumber() {
        return companyRegisterNumber;
    }

    public void setCompanyRegisterNumber(String companyRegisterNumber) {
        this.companyRegisterNumber = companyRegisterNumber;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public int getPincode() {
        return pincode;
    }

    public void setPincode(int pincode) {
        this.pincode = pincode;
    }

    public String getPanNumber() {
        return panNumber;
    }

    public void setPanNumber(String panNumber) {
        this.panNumber = panNumber;
    }

    public int getExperience() {
        return experience;
    }

    public void setExperience(int experience) {
        this.experience = experience;
    }

    public double getQuoteAmount() {
        return quoteAmount;
    }

    public void setQuoteAmount(double quoteAmount) {
        this.quoteAmount = quoteAmount;
    }

    @Override
    public String toString() {
        return "DTOTenderForm{" + "tenderId=" + tenderId + ", companyName=" + companyName + ", companyRegisterNumber=" + companyRegisterNumber + ", location=" + location + ", pincode=" + pincode + ", panNumber=" + panNumber + ", experience=" + experience + ", quoteAmount=" + quoteAmount + '}';
    }
}