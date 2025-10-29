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
                echo 'Logging into Docker Hub...'
                withCredentials([usernamePassword(credentialsId: 'dockerhub-login', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    bat 'echo $PASSWORD | docker login -u $USERNAME --password-stdin'
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                echo 'Pushing Docker image to Docker Hub...'
                bat 'docker push myjavaapp'
            }
        }
    }
}


