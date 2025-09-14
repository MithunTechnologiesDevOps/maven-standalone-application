pipeline {
    agent any
    stages {
        stage('Build') {
            agent {
                docker {
                    image 'maven:amazoncorretto'
                    reuseNode true
                }
            }
            steps {
                sh '''
                    echo "Cleaning maven cache and target folder..."
                    rm -rf target
                    mvn clean install
                    mvn package
                    mvn --version
                    echo "Hello Welcome to Jenkins"
                    ls -la
                '''
            }
        }
        stage('Test') {
            steps {
                echo "Running tests..."
                sh '''
                   mvn test
                   # Ensure we're using bash
                   echo "Running tests..."
                   bash -c 'a=(1 3 4 5); echo "Array elements: ${a[@]: -2}"'
                '''
            }
        }
    }
}
