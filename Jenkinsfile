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
        sh 'echo nothing works'
      }
    }
  }
}
