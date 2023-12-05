pipeline {
  agent any

  triggers {
    pollSCM('* * * * *')
  }

  stages {
    stage('Checkout') {
      steps {
        git branch: 'main',
        url: 'github.com/benjykim/source-maven-java-spring-hello-webapp'
      }
    }
    stage('Build') {
      steps {
        sh 'clean package'
      }
    }
    stage('Test') {
      steps {
        echo 'hello world'
      }
    }
    stage('Deploy') {
      steps {
        deploy adapters: [tomcat9(credentialsId: 'admin', url: '15.164.181.64:8080')], contextPath: null, war: '/var/lib/jenkins/workspace/maven_project/target'
      }
    }
  }
}
