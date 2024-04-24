pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'printenv'
                sh 'docker build -t osmomosm/jen-doc:$BUILD_ID .'
            }
        }
        stage('Publish') {
            steps {
                withDockerRegistry([credentialsId: 'dockerhub', url: '']) {
                    sh 'docker push osmomosm/jen-doc:$BUILD_ID'
                }
            }
        }
    }
}
