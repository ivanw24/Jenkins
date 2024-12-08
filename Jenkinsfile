pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/username/repository.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-node-app .'
            }
        }
        stage('Run Unit Tests') {
            steps {
                sh 'docker run my-node-app npm test'
            }
        }
        stage('Deploy Container') {
            steps {
                sh 'docker run -d -p 3000:3000 --name node-app my-node-app'
            }
        }
    }
}
