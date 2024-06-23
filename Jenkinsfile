pipeline{
    
    agent any
    
    tools{
        maven 'maven3.8.5'
    }

stages{
//Get the code from GitHub
    stage('CheckoutCode'){
	steps{
	   
	git branch: 'master', credentialsId: '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', url: 'https://github.com/prashanthkvarma/maven-standalone-application.git'
	}
	}
  

  
  
  
}// Stages Closing
  
}// Pipelien CLosing
