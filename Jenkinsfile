pipeline {
    agent any

parameters {
  choice choices: ['master', 'develop-branch-stage-separation', 'feature'], description: 'select branch name', name: 'branchName'
}

    stages {
//      def branchName = env.BRANCH_NAME
       
        stage('Checkout') {
            if (branchName == 'develop')  {
                steps {
                    git branch: "${params.branchName}", credentialsId: 'github_creds', url: 'https://github.com/prashanthkvarma/maven-standalone-application.git'
                }
            }    
        }
    

      if (branchName == 'develop') { 
        stage('Unit Test') {
            steps {
                sh "mvn test"
            }
        }
        }
        
      if (branchName == 'feature') { 
      stage('Checkout') {
            steps {
                git branch: "${params.branchName}", credentialsId: 'github_creds', url: 'https://github.com/prashanthkvarma/maven-standalone-application.git'
            }
        }
        }
      if (branchName == 'feature') { 
        stage('Unit Test') {
            steps {
                sh "mvn test"
            }
        } 
      }
    } // stages closing
} // pipeline closing