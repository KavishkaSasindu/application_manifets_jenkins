pipeline {
    agent any
    environment {
        IMAGE = "timer-app"
        TAG = "${env.GIT_COMMIT.take(4)}"
        CONTAINER = "timer-app-1"
    }
    stages {
        stage('chekout scm') {
            steps {
                git branch: 'main', url:'https://github.com/KavishkaSasindu/application_manifets_jenkins.git'
            }
        }
        stage('test env') {
            steps {
                sh '''
                    echo "Checking docker...."
                    docker --version
                    docker ps -a
                    echo "Checking trivy scanner...."
                    trivy --version 
                '''
            }
        }
        stage('test code') {
            steps {
                sh'''
                    echo "Automate Testing..."
                '''
            }
        }
        stage('build image') {
            steps {
                sh'''
                    docker build -t $IMAGE:$TAG .
                    docker image list
                '''
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
