pipeline {

    agent any
    stages{

        stage('Checkout'){
            
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/natgz/DOTT-nat.git']]])
            }
        }


        stage('Build'){
            agent {
                docker {image 'wyleung/python-builder'}
            }
            steps {
                sh 'docker build -t pym .'
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