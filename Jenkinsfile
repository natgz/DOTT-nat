pipeline {

    agent any

    stages{

        stage('Build'){
            steps {
                git branch: 'Project', credentialsId: 'git-credentials-dott', url: 'https://github.com/natgz/DOTT-nat.git'
                sh 'python api.py'
            }
       
        }

        stage('Test'){
            steps {
                echo 'testing...'
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
