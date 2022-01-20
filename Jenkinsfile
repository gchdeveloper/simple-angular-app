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
        sh 'get fucked'
      }
    }
    stage('Test') {
      steps {
        sh 'echo Test stage placeholder'
      }
    }
    stage('Deploy') {
      steps {
        sh 'npm start'
      }
    }
  }
}
