pipeline {
  agent any

  triggers {
    pollSCM('* * * * *')
  }

  stages {
    stage('Checkout') {
      steps {
        git branch: 'main',
        url: 'https://github.com/benjykim/source-maven-java-spring-hello-webapp'
      }
    }
    stage('Build') {
      steps {
        sh 'mvn clean package'
      }
    }
    stage('Test') {
      steps {
        sh 'mvn test'
      }
    }
    stage('Deploy') {
      steps {
        deploy adapters: [tomcat9(credentialsId: 'tomcat-manager', path: '', url: '15.164.181.64:8080')], contextPath: null, war: 'target/hello-world.war'
      }
    }
  }
}
