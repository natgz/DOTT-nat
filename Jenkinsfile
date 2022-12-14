pipeline {

    agent none
    stages{

        stage('Checkout'){
            
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/natgz/DOTT-nat.git']]])
            }
        }
        
        stage('Build'){
            
           agent {
                docker {
                    image 'python:3-alpine'
                }
            }
            steps {
                sh 'python -m py_compile sources/api.py sources/convert.py'
                stash(name: 'compiled-results', includes: 'sources/*.py*')
            }
       
        }
    }
   
}


// Syntax
// Execute some logic After all stages executed
    // post {

    // }
    // // define a script that runs only when the build succeded
    // always {

    // }
    // // defines a script that runs only when the build fails
    // failure {

    // }