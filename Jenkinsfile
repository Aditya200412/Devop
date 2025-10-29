pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub-login')
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'master', url: 'https://github.com/Aditya200412/Devop.git'
            }
        }

        stage('Compile Java App') {
            steps {
                bat 'javac demo.java'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t adityaih/demoapp .'
            }
        }

        stage('Login to Docker Hub') {
            steps {
                bat 'docker login -u %DOCKERHUB_CREDENTIALS_USR% -p %DOCKERHUB_CREDENTIALS_PSW%'
            }
        }

        stage('Push Docker Image') {
            steps {
                bat 'docker push adityaih/demoapp'
            }
        }

        
    }
}


