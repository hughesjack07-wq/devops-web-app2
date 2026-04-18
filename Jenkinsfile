pipeline {
    agent any
    stages {
        stage('GetProject') {
            steps {
                git branch: 'main', url: 'https://github.com/hughesjack07-wq/devops-web-app2.git'
            }
        }
        stage('build') {
            steps {
                dir('demo') {
                    sh 'JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64 mvn clean'
                }
            }
        }
        stage('Package') {
            steps {
                dir('demo') {
                    sh 'JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64 mvn package'
                }
            }
        }
    }
    post {
        success {
            archiveArtifacts allowEmptyArchive: true,
                artifacts: 'demo/target/*.war'
        }
    }
}
