pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/lakewash/hello.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'echo "Pretending to build Docker image lakewash/hello"'
            }
        }

        stage('Push Docker Image') {
            steps {
                sh 'echo "Pretending to push Docker image to DockerHub"'
            }
        }
    }
}

