pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'building'
        sh 'mvn package'
        tool(name: 'jenkins-test', type: 'maven')
      }
    }

    stage('Test') {
      steps {
        echo 'testing'
        sh 'jenkins/test-all.sh'
      }
    }

    stage('Deploy') {
      steps {
        echo 'deploying'
        sh 'jenkins/deploy.sh'
      }
    }

  }
}