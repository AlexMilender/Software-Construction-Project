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
        stage('Setup') {
            steps{
                script{
                    try {
                        sh '''docker stop $(docker ps -q)'''
                    } catch(e) {
                        echo "no docker containers to kill"
                    }
                }
            }
        }
        stage('Build') {
            steps {
                sh 'gradle build'
            }
        }
        stage('Test') {
            steps {
                sh 'gradle test'
                post{
                    always{
                        script{
                            try {
                                sh '''docker stop $(docker ps -q)'''
                            } catch(e) {
                                echo "no docker containers to kill"
                            }
                        }
                    }
                }
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}