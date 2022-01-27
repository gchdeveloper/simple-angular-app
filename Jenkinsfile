pipeline {
    // new mutli-agent build
    agent none
    stages {
        stage('Build and Test') {
            agent {
                docker {
                    image 'node:12-alpine'
                    args '-v ang-build:/var/jenkins_home/workspace/simple-angular-app/dist/simple-angular-app'
                }
            }
            stages {
                stage('Build') {
                    steps {
                        sh 'npm install'
                        sh 'npm run build'
                    }
                }
                stage('Test') {
                    steps {
                        sh 'echo testing...'
                    }
                }
            }
        }
        stage('Deploy') {
            agent {
                docker {
                    image 'nginx:1.17.1-alpine'
                    args '-v ang-build:/usr/share/nginx/html -p 80:80'
                }
            }
            stages {
                stage('Deploy') {
                    steps {
                        sh '/usr/bin/nginx'
                    }
                }
            }
        }
    }

    // initial build
//     agent {
//         docker {
//             image 'node:lts-bullseye-slim'
//             args '-p 4401:4401'
//         }
//     }
//     stages {
//         stage('Build') {
//             steps {
//                 sh 'npm install'
//             }
//         }
//         stage('Test') {
//             steps {
//                 sh './jenkins/scripts/test.sh'
//             }
//         }
//         stage('Deliver') {
//             steps {
//                 sh './jenkins/scripts/deliver.sh'
//                 input message: 'Select "Proceed" to continue after finishing browsing the site.'
//                 sh './jenkins/scripts/kill.sh'
//             }
//         }
//     }
}
