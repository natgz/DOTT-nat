pipeline {

    agent any

    stages{

        // stage('Build image'){
        //     steps {
        //         sh 'docker build -t pym .'
        //     }
       
        // }

        // stage('run image'){
        //     steps {
        //         sh 'docker run -ti -p 8000:8000 pym'
        //     }
       
        // }

        // stage('Build image'){
        //     steps {
        //         sh 'docker build -t pym .'
        //     }
       
        // }

        // stage('run image'){
        //     steps {
        //         sh 'docker run -ti -p 8000:8000 pym'
        //     }
       
        // }

        stage('Build'){
            steps {
                git branch: 'Project', credentialsId: 'git-credentials-dott', url: 'https://github.com/natgz/DOTT-nat.git'
                sh 'python3 api.py'
            }
       
        }

        stage('Test'){
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
