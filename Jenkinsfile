pipeline {
  agent {
    docker {
      image 'node:lts-bullseye-slim'
      args '-p 4200:4200'
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
        sh 'echo Test stage placeholder'
      }
    }
    stage('Deploy') {
      steps {
        sh './jenkins/scripts/deliver.sh'
        input message: 'Select "Proceed" to shut down the angular app'
        sh './jenkins/scripts/kill.sh'
      }
    }
  }
}
