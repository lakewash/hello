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

        stage('Build with Maven') {
            steps {
                sh 'echo "Skipping Maven build (no pom.xml found)"'
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

        stage('Deploy to EC2') {
            steps {
                sh "ssh -o StrictHostKeyChecking=no ubuntu@YOUR-EC2-PUBLIC-IP 'docker run -d -p 9090:9090 lakewash/hello'"
            }
        }
    }
}

