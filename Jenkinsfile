pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'building'
        tool(name: 'jenkins-test', type: 'maven')
        sh 'mvn package'
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