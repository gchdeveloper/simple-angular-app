pipeline {
    agent {
        docker {
            image 'node:lts-bullseye-slim'
            args '-p 4401:4401'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
                sh './jenkins/scripts/test.sh'
            }
        }
        stage('Deliver') {
            steps {
                sh './jenkins/scripts/deliver.sh && tail -f /dev/null'
                input message: 'Select "Proceed" to continue after fnishing browsing the site.'
                sh './jenkins/scripts/kill.sh'
            }
        }
    }
}
