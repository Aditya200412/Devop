pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                echo 'Checking out code...'
                git branch: 'main', url: 'https://github.com/Aditya200412/Devop.git'
            }
        }

        stage('Compile Java App') {
            steps {
                echo 'Compiling Java application...'
                bat 'javac demo.java'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                bat 'docker build -t myjavaapp .'
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



