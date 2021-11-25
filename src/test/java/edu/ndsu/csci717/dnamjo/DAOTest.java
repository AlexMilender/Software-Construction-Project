package edu.ndsu.csci717.dnamjo;

import com.palantir.docker.compose.DockerComposeExtension;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.RegisterExtension;
import org.junit.jupiter.api.Assertions;

import java.io.IOException;

public class DAOTest {

    @RegisterExtension
    public static DockerComposeExtension docker = DockerComposeExtension.builder()
            .file("src/test/resources/docker-compose.test.yml")
            .build();

    @Test
    void doRegister() throws InterruptedException, IOException {
        Assertions.assertTrue(false, "start from a failure");
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