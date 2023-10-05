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
            bat 'docker rm -f shayok '
            bat 'docker rmi github'
            bat 'docker build -t github .'
         }
      }
      stage('Test') {
         steps {
            bat 'docker run -d -p 3000:3000 --name shayok1 github'
         }
      }
   }
}
