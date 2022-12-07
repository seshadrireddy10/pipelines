pipeline {
    agent any

    stages {
        stage('Run java clases') {
            steps {
                sh 'javac Hello.java'
            }
        }
        stage('Build jar file') {
            steps {
                sh 'jar cmf Hello.mf Hello.jar Hello.class Hello.java'
            }
        }
        stage('Build Docker images ') {
            steps {
                sh 'docker build -t hello .'
            }
        }
        stage('Run Docker images ') {
            steps {
                sh 'docker run -it hello'
            }
        }
        stage('Docker stop images ') {
            steps {
                sh 'docker stop  hello'
            }
        }
        stage('Remove Docker images ') {
            steps {
                sh 'docker rmi hello'
            }
        }

    }
}
