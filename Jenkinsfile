pipeline {
    agent any

parameters {
  choice choices: ['master', 'develop-branch-stage-separation', 'feature'], description: 'select branch name', name: 'branchName'
}

    stages {
        stage('Checkout') {
            when {
                branch 'develop'
            }
            steps {
                git branch: "${params.branchName}", credentialsId: 'github_creds', url: 'https://github.com/prashanthkvarma/maven-standalone-application.git'
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

        stage('Package') {
            when {
                branch 'develop'
            }
            steps {
                sh "mvn clean package"
            }
        }
        
// Feature environment starts:

        stage('feature-Checkout') {
            when {
                branch 'feature'
            }
            steps {
                git branch: "${params.branchName}", credentialsId: 'github_creds', url: 'https://github.com/prashanthkvarma/maven-standalone-application.git'
            }
        }

        stage('feature-Unit Test') {
            when {
                branch 'feature'
            }
            steps {
                sh "mvn test"
            }
        }

        stage('feature-Package') {
            when {
                branch 'feature'
            }
            steps {
                sh "mvn clean package"
            }
        }
    } // stages closing
} // pipeline closing