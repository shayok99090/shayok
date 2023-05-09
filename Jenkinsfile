pipeline {
   agent any
   stages {
      stage('Checkout') {
         steps {
            checkout scm
         }
      }
      stage('Build') {
         steps {
            bat 'docker rm -f cicd'
            bat 'docker build -t jenkins .'
         }
      }
      stage('Test') {
         steps {
            bat 'docker run -d -p 3000:3000 --name cicd jenkins'
         }
      }
   }
}
