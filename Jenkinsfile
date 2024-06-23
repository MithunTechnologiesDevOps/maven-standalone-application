pipeline{
    
    agent any


stages{
//Get the code from GitHub
    stage('CheckoutCode'){
	steps{
	   
	git branch: 'master', credentialsId: 'github_creds', url: 'https://github.com/prashanthkvarma/maven-standalone-application.git'
	}
	}
  
        stage ('unit test'){
            steps{
                sh "echo TEST"
            } //Steps close
        } // unit test stage close
  
  
  
}// Stages Closing
  
}// Pipelien CLosing
