pipeline {
    // new mutli-agent build
    agent none
    stages {
//         stage('Build and Test') {
//             agent {
//                 docker {
//                     image 'node:16-alpine'
//                     args '-u root:root -v ang-build:/var/jenkins_home/workspace/simple-angular-app-fixed/my-dist'
//                 }
//             }
//             stages {
//                 stage('Build') {
//                     steps {
//                         sh 'rm -rf dist'
//                         sh 'npm install'
//                         sh 'npm run build'
//                         sh 'ls -al dist/simple-angular-app'
//                         sh 'cp dist/simple-angular-app/* my-dist/'
//                     }
//                 }
//                 stage('Test') {
//                     steps {
//                         input message: "Click Proceed to test"
//                         sh 'echo testing...'
//                     }
//                 }
//             }
//         }
        stage('Deploy') {
            agent {
                docker {
                    image 'nginx'
                    args '-p 8081:80'
//                     args '-v ang-build:/usr/share/nginx/html:ro -p 8081:80'
                }
            }
            stages {
                stage('Deploy') {
                    steps {
                        sh 'ls -al /usr/share/nginx/html'
                        sh 'echo Deployed?...'
//                         input message: "Click Proceed to terminate web server"
                        sh 'echo Terminated?...'
                        sh 'tail -f /dev/null &'
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
