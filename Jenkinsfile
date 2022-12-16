pipeline {

    agent any

    stages{

        stage('Build image'){
            steps {
                sh 'docker build -t pym .'
                
            }
       
        }

        stage('run image'){
            steps {
                sh 'docker run -d -p 8000:8000 pym'
            }
       
        }

        stage('Build'){
            steps {
                git branch: 'branch2', credentialsId: 'git-credentials-dott', url: 'https://github.com/natgz/dott-nat.git'
                sh 'python3 api.py'
            }
       
        }

        stage('Unit Test'){
            steps {
                sh 'python3 -m pytest'
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
