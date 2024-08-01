pipeline {
    agent any

parameters {
  choice choices: ['master', 'develop-branch-stage-separation', 'feature'], description: 'select branch name', name: 'branchName'
}

    stages {
//      def branchName = env.BRANCH_NAME
       
        stage('Checkout') {
            when {
                branch 'develop'
                branch 'feature'
            }
            steps {
                git branch: "${params.branchName}", credentialsId: 'github_creds', url: 'https://github.com/prashanthkvarma/maven-standalone-application.git'
            }
        }


        stage('Unit Test') {
            when {
                branch 'develop'
                branch 'feature'
            }
            steps {
                sh "mvn test"
            }
        }
        
      
        stage('Unit Test') {
            when {
                branch 'develop'
            }
            steps {
                sh "mvn test"
            }
        } 
    } // stages closing
} // pipeline closing