pipeline {
  agent {
    docker {
      image 'maven:3-alpine'
      args '-v /root/.m2:/root/.m2'
    }

  }
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