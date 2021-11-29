package edu.ndsu.csci717.dnamjo;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.Assertions;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
    }

    @Test
    void loginCheck() {
    }

    @Test
    void getTendersData() {
    }

    @Test
    void conformedTenders() {
    }

    @Test
    void tenderAnnounce() {
    }

    @Test
    void getPublishedData() {
    }

    @Test
    void getTenderIdFromAcceptedTenders() {
    }

    @Test
    void checkTenderIdExistancy() {
    }

    @Test
    //10
    void getConformTenders() {
    }

    @Test
    void getConformAllTenders() {
    }

    @Test
    void updateRecords() {
    }

    @Test
    void tenderCount() {
    }

    @Test
    void getEmails() {
    }

    @Test
    void testGetEmails() {
    }

    @Test
    void getSuccessStories() {
        int num = 1;
        String company = "m123";
        String story = "hai hashfdsnvhnfncpocvhdgjfofjudhdhdhdhdhdhdhdhdhdhdhdhbogog";
        DTOShareInfo dtoShareInfo = new DTOShareInfo(num, company, story);
        boolean SuccessStories_flag = false;
        DAO dataAccess = new DAO();
        try{
            SuccessStories_flag = dataAccess.getSuccessStories(dtoShareInfo);
        } catch (SQLException e) {
            Assertions.fail("SQL Error", e);
        }
        Assertions.assertTrue(SuccessStories_flag,"getSuccessStories Successful");
    }

    @Test
    void getAllSuccessStories() {
        ResultSet SuccessStories;
        DAO dataAccess = new DAO();
        try{
            SuccessStories = dataAccess.getAllSuccessStories();
            String temp = SuccessStories.toString();
            System.out.println(temp);
        } catch (SQLException e) {
            Assertions.fail("SQL Error", e);
        }
        Assertions.assertTrue(false,"getAllSuccessStories Successful");

    }

    @Test
    void getFileFromRegister() {
        ArrayList<String> returnedFile;
        String returnedFileName = "";
        DAO dataAccess = new DAO();
        try{
            returnedFile = dataAccess.getFileFromRegister();
            returnedFileName = returnedFile.get(0).toString();
        } catch (SQLException e) {
            Assertions.fail("SQL Error", e);
        }
        Assertions.assertTrue(returnedFileName.contains("Android.docx"), "getFileFromRegister Successful");
    }

    @Test
    void getDetails() {
        String userEmail = "ram@gmail.com";
        String asdf = "";
        ResultSet userEmail_returned;
        DAO dataAccess = new DAO();
        try{
            userEmail_returned = dataAccess.getDetails(userEmail);
        } catch (SQLException e) {
           Assertions.fail("SQL Error", e);
        }
        Assertions.assertTrue(false,"getDetails Successful");
    }

    @Test
    void getFileNameUsingregisterId() {
        String registerId = new String("x123");
        String registerId_file = new String("noImage");
        String registerId_retunedFile = "";
        DAO dataAccess = new DAO();
        try {
            registerId_retunedFile = dataAccess.getFileNameUsingregisterId(registerId);
        } catch (SQLException e) {
            Assertions.fail("SQL Error", e);
        }
        Assertions.assertTrue(registerId_file.equals(registerId_retunedFile), "getFileNameUsingregisterId Successful");
    }
}