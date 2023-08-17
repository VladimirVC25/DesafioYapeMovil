pipeline {
    agent any

    tools {
        maven 'Maven 3.8.4'
        jdk 'jdk11'
    }

    stages {
        stage('Clean') {
            steps {
                echo 'Limpiando...'
                bat 'mvn clean'
            }
        }

        stage('Test') {
            steps {
                 echo 'Ejecutando...'
                 bat 'mvn test'
            }
        }
    }
}