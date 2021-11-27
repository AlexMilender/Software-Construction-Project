package edu.ndsu.csci717.dnamjo;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.Assertions;
import java.sql.SQLException;

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
    }

    @Test
    void getAllSuccessStories() {
    }

    @Test
    void getFileFromRegister() {
    }

    @Test
    void getDetails() {
    }

    @Test
    void getFileNameUsingregisterId() {
    }
}