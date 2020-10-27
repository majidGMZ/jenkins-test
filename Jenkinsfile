pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'building'
        sh 'jenkins/build.sh'
      }
    }

    stage('Test') {
      steps {
        echo 'testing'
        sh 'jenkins/test.sh'
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