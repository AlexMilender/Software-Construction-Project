package edu.ndsu.csci717.dnamjo;
public class DTOShareInfo {
    private int SlNo;
    private String CompanyRegisterNumber;
    private String story;

    public DTOShareInfo() {
    }

    public DTOShareInfo(int SlNo, String CompanyRegisterNumber, String story) {
        this.SlNo = SlNo;
        this.CompanyRegisterNumber = CompanyRegisterNumber;
        this.story = story;
    }

    public int getSlNo() {
        return SlNo;
    }

    public void setSlNo(int SlNo) {
        this.SlNo = SlNo;
    }

    public String getCompanyRegisterNumber() {
        return CompanyRegisterNumber;
    }

    public void setCompanyRegisterNumber(String CompanyRegisterNumber) {
        this.CompanyRegisterNumber = CompanyRegisterNumber;
    }

    public String getStory() {
        return story;
    }

    public void setStory(String story) {
        this.story = story;
    }

    @Override
    public String toString() {
        return "DTOShareInfo{" + "SlNo=" + SlNo + ", CompanyRegisterNumber=" + CompanyRegisterNumber + ", story=" + story + '}';
    }
 
    
}
