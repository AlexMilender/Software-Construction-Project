package edu.ndsu.csci717.dnamjo;

import com.palantir.docker.compose.DockerComposeExtension;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.RegisterExtension;
import org.junit.jupiter.api.Assertions;

import java.io.IOException;

public class DAOTest {

    @RegisterExtension
    public static DockerComposeExtension docker = DockerComposeExtension.builder()
            .file("docker-compose.yml")
            .build();

    @Test
    void doRegister() throws InterruptedException, IOException {
        String name = "Bob";
        String companyName= "Bob";
        String registerId= "Bob";
        String mobileNumber= "Bob";
        String city= "Bob";
        String state= "Bob";
        String pinCode= "Bob";
        String panNumber= "Bob";
        String estYear= "Bob";
        String radioopt= "Bob";
        String radioopt1= "Bob";
        String file1= "Bob";
        String email= "Bob";
        String password= "Bob";
        String check= "Bob";
        String desig= "Bob";
        DTORegister dtoRegister = new DTORegister(name, companyName, registerId, mobileNumber, city, state, pinCode, panNumber, estYear, radioopt, radioopt1, file1, email, password, check, desig);

        DAO dataAccess = new DAO();
        boolean isSuccessful = dataAccess.doRegister(dtoRegister);

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