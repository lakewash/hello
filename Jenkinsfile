pipeline {
    agent any

    environment {
        DOCKERHUB = credentials('dockerhub-creds')
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/lakewash/hello.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh "docker build -t lakewash/hello ."
            }
        }

        stage('Push Docker Image') {
            steps {
                sh "echo $DOCKERHUB_PSW | docker login -u $DOCKERHUB_USR --password-stdin"
                sh "docker push lakewash/hello"
            }
        }
    }
}

