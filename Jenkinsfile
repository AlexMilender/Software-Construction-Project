//Builds once in hours 3-6 every night
String cronString = "H H(3-6) * * 1-7"
pipeline {
    agent any
    triggers {
        cron(cronString)
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                catchError(buildResult: 'FAILURE'){
                    sh "exit 1"
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}