pipeline {

    agent any

    stages{

        stage('Git Checkout'){
            
            steps{git branch: 'main', url: 'https://github.com/natgz/DOTT-nat.git'}
        }

        stage('Test'){
            steps {
                    echo 'testing the application' 
            }
        }
    
        stage('Deploy'){
            steps {
                    echo 'testing the application' 
            }
        }
        
    }

    
}