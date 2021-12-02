package edu.ndsu.csci717.dnamjo;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.Assertions;

import java.math.BigDecimal;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class DAOTest {

    @Test
    void doRegister() {
        String name = "Bob";
        String companyName = "Bob";
        String registerId = "Bob";
        String mobileNumber = "Bob";
        String city = "Bob";
        String state = "Bob";
        String pinCode = "Bob";
        String panNumber = "Bob";
        String estYear = "1991-12-25";
        String radioopt = "Bob";
        String radioopt1 = "Bob";
        String file1 = "Bob";
        String email = "Bob";
        String password = "Bob";
        String check = "Bob";
        String desig = "Bob";

        DTORegister dtoRegister = new DTORegister(name, companyName, registerId, mobileNumber, city, state, pinCode, panNumber, estYear, radioopt, radioopt1, file1, email, password, check, desig);
        DAO dataAccess = new DAO();
        boolean isSuccessful = false;
        try {
            isSuccessful = dataAccess.doRegister(dtoRegister);
        } catch (SQLException e) {
            Assertions.fail("SQL Error: ",e);
        }
        Assertions.assertTrue(isSuccessful, "Record inserted successfully");
    }

    @Test
    void doTenderForm() {
        String tenderId = "Bill";
        String companyName = "Bill";
        String companyRegisterNumber = "Bill";
        String location = "Bill";
        String panNumber = "Bill";
        int experience = 41;
        double quoteAmount = 24;

        DTOTenderForm dtoTenderForm = new DTOTenderForm(tenderId, companyName, companyRegisterNumber, location, panNumber, experience, quoteAmount);
        DAO dataAccess = new DAO();
        boolean isSuccessful = false;
        try {
            isSuccessful = dataAccess.doTenderForm(dtoTenderForm);
        } catch (SQLException e) {
            Assertions.fail("SQL Error: ",e);
        }
        Assertions.assertTrue(isSuccessful, "doTenderForm inserted successfully");
    }

    @Test
    void loginCheck() {
        LoginBean loginbean = new LoginBean("see@gmail.com", "123456", "user");
        LoginBean loginbean_returned = new LoginBean();
        DAO dataAccess = new DAO();
        try {
            loginbean_returned = dataAccess.loginCheck(loginbean);
        } catch (SQLException e) {
            Assertions.fail("SQL Error: ",e);
        }
        Assertions.assertEquals("user", loginbean_returned.getDesig(), "loginCheck completed successfully");
    }

    @Test
    void getTendersData() {
        DAO dataAccess = new DAO();
        boolean isSuccessful = false;
        try{
            isSuccessful = dataAccess.getTendersData();
        } catch (SQLException e) {
            Assertions.fail("SQL Error", e);
        }
        Assertions.assertTrue(isSuccessful, "getTendersData Successful");
    }

    @Test
    void conformedTenders() {
        String companyRegisterNumber = "Tom";
        String pancard = "Tom";
        BigDecimal companyRegNumber = BigDecimal.valueOf(1000000);
        Timestamp location = Timestamp.valueOf("2000-02-20 12:24:41");
        String tenderId = "Tom";
        DAO dataAccess = new DAO();
        int returned_int = -1;
        try{
            returned_int = dataAccess.ConformedTenders(companyRegisterNumber, pancard, companyRegNumber, location, tenderId);
        } catch (SQLException e) {
            Assertions.fail("SQL Error", e);
        }
        Assertions.assertEquals(1, returned_int, "conformedTenders Successful");
    }

    @Test
    void tenderAnnounce() {
        String companyRegisterNumber = "Jake";
        String startDate = "1999-01-01";
        String endDate = "2000-02-20";
        String fileName = "Test.txt";
        String department = "WICKED";
        DAO dataAccess = new DAO();
        int returned_int = -1;
        try{
            returned_int = dataAccess.tenderAnnounce(companyRegisterNumber, startDate, endDate, fileName, department);
        } catch (SQLException e) {
            Assertions.fail("SQL Error", e);
        }
        Assertions.assertEquals(1, returned_int, "conformedTenders Successful");
    }

    @Test
    void getPublishedData() {
        ArrayList<String> publishedData = new ArrayList<>();
        DAO dataAccess = new DAO();
        try{
            publishedData = dataAccess.getPublishedData();
        } catch (SQLException e) {
            Assertions.fail("SQL Error", e);
        }
        Assertions.assertTrue(publishedData.size() > 0, "getPublishedData Successful");
    }

    @Test
    void getTenderIdFromAcceptedTenders() {
        ArrayList<String> returnedTenders = new ArrayList<>();
        DAO dataAccess = new DAO();
        try{
            returnedTenders = dataAccess.getTenderIdFromAcceptedTenders();
        } catch (SQLException e) {
            Assertions.fail("SQL Error", e);
        }
        Assertions.assertTrue(returnedTenders.size() > 0, "getTenderIdFromAcceptedTenders Successful");
    }

    @Test
    void checkTenderIdExistancy() {
        String returnedTender = "";
        String tenderId = "AD123";
        DAO dataAccess = new DAO();
        try{
            returnedTender = dataAccess.checkTenderIdExistancy(tenderId);
        } catch (SQLException e) {
            Assertions.fail("SQL Error", e);
        }
        Assertions.assertEquals("Tender.txt", returnedTender, "checkTenderIdExistancy Successful");
    }

    @Test
    void getConformTenders() {
        String returnedTender = "";
        String tenderId = "AD123";
        DAO dataAccess = new DAO();
        try{
            returnedTender = dataAccess.getConformTenders(tenderId);
        } catch (SQLException e) {
            Assertions.fail("SQL Error", e);
        }
        Assertions.assertEquals("m123", returnedTender, "getConformTenders Successful");
    }

    @Test
    void getConformAllTenders() {
        List<String> returnedAllTenders = new ArrayList<>();
        DAO dataAccess = new DAO();
        try{
            returnedAllTenders = dataAccess.getConformAllTenders();
        } catch (SQLException e) {
            Assertions.fail("SQL Error", e);
        }
        Assertions.assertTrue(returnedAllTenders.size() > 0, "getConformAllTenders Successful");
    }

    @Test
    void updateRecords() {
        int returnedRecords = -1;
        String tenderId = "AD123";
        DAO dataAccess = new DAO();
        try{
            returnedRecords = dataAccess.updateRecords(tenderId);
        } catch (SQLException e) {
            Assertions.fail("SQL Error", e);
        }
        Assertions.assertEquals(2, returnedRecords, "tenderCount Successful");
    }

    @Test
    void tenderCount() {
        int returnedTenderCount = -1;
        String tenderId = "AD123";
        DAO dataAccess = new DAO();
        try{
            returnedTenderCount = dataAccess.tenderCount(tenderId);
        } catch (SQLException e) {
            Assertions.fail("SQL Error", e);
        }
        Assertions.assertTrue(returnedTenderCount > 0, "tenderCount Successful");
    }

    @Test
    void getEmails() {
        ArrayList<String> returnedEmails;
        String returnedEmail0 = "";
        String returnedEmail1 = "";
        DAO dataAccess = new DAO();
        try{
            returnedEmails = dataAccess.getEmails();
            returnedEmail0 = returnedEmails.get(returnedEmails.size() - 2);
            returnedEmail1 = returnedEmails.get(returnedEmails.size() - 1);
        } catch (SQLException e) {
            Assertions.fail("SQL Error", e);
        }
        Assertions.assertEquals("ram@gmail.com", returnedEmail0, "getEmails Successful");
        Assertions.assertEquals("see@gmail.com", returnedEmail1, "getEmails Successful");
    }

    @Test
    void testGetEmails() {
        ArrayList<String> returnedEmails;
        String userId = "m123";
        String returnedEmail = "";
        DAO dataAccess = new DAO();
        try{
            returnedEmails = dataAccess.getEmails(userId);
            returnedEmail = returnedEmails.get(0);
        } catch (SQLException e) {
            Assertions.fail("SQL Error", e);
        }
        Assertions.assertEquals("see@gmail.com", returnedEmail, "testGetEmails Successful");
    }

    @Test
    void submitSuccessStories() {
        int num = 1;
        String company = "ABC";
        String story = "XYZ";
        DTOShareInfo dtoShareInfo = new DTOShareInfo(num, company, story);
        boolean successStories_flag = false;
        DAO dataAccess = new DAO();
        try{
            successStories_flag = dataAccess.submitSuccessStories(dtoShareInfo);
        } catch (SQLException e) {
            Assertions.fail("SQL Error", e);
        }
        Assertions.assertTrue(successStories_flag,"getSuccessStories Successful");
    }

    @Test
    void getAllSuccessStories() {
        List<String> successStories = new ArrayList<>();
        DAO dataAccess = new DAO();
        try{
            successStories = dataAccess.getAllSuccessStories();
        } catch (SQLException e) {
            Assertions.fail("SQL Error", e);
        }
        Assertions.assertTrue(successStories.size() > 0,"getAllSuccessStories Successful");
    }

    @Test
    void getFileFromRegister() {
        ArrayList<String> returnedFile;
        String returnedFileName = "";
        DAO dataAccess = new DAO();
        try{
            returnedFile = dataAccess.getFileFromRegister();
            returnedFileName = returnedFile.get(returnedFile.size() - 1);
        } catch (SQLException e) {
            Assertions.fail("SQL Error", e);
        }
        Assertions.assertEquals("Android.docx", returnedFileName, "getFileFromRegister Successful");
    }

    @Test
    void getDetails() {
        String userEmail = "see@gmail.com";
        List<String> details_returned = new ArrayList<>();
        DAO dataAccess = new DAO();
        try{
            details_returned = dataAccess.getDetails(userEmail);
        } catch (SQLException e) {
           Assertions.fail("SQL Error", e);
        }
        Assertions.assertEquals("seetharam", details_returned.get(0), "getDetails Successful");
        Assertions.assertEquals("mts", details_returned.get(1), "getDetails Successful");
        Assertions.assertEquals("m123", details_returned.get(2), "getDetails Successful");
    }

    @Test
    void getFileNameUsingregisterId() {
        String registerId = "x123";
        String registerId_file = "noImage";
        String registerId_returnedFile = "";
        DAO dataAccess = new DAO();
        try {
            registerId_returnedFile = dataAccess.getFileNameUsingregisterId(registerId);
        } catch (SQLException e) {
            Assertions.fail("SQL Error", e);
        }
        Assertions.assertEquals(registerId_file, registerId_returnedFile, "getFileNameUsingregisterId Successful");
    }
}