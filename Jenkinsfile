//Builds once in hours 3-6 every night
String cronString = "H H(3-6) * * 1-7"
pipeline {
    agent any
    triggers {
        cron(cronString)
    }
    tools {
        gradle "CSCI717_Gradle"
    }
    stages {
        stage('Build') {
            steps {
                sh 'gradle build'
            }
        }
        stage('Test') {
            steps {
                sh 'gradle test'
            }
        }
        post{
            always{
                sh docker stop $(docker ps -q)
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}