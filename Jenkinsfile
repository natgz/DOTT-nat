pipeline {

    agent any

    stages{

        stage('Checkout'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/Project']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/natgz/DOTT-nat.git']]])
            }
        }


        stage('Build'){
            steps {
                git branch: 'Project', url: 'https://github.com/natgz/DOTT-nat.git'
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
