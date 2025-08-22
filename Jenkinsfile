pipeline {
    agent: any
    stages {
        stage('docker env') {
            steps {
                sh'''
                    docker --version
                    docker ps -a
                '''
            }
        }
    }
}