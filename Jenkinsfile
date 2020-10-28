pipeline {
  agent {
    docker {
      image 'openjdk:8'
      args '-v /home/majid/.m2:/root/.m2'
    }

  }
  stages {
    stage('build') {
      agent any
      steps {
        echo 'building'
        tool(name: 'jenkins-test', type: 'maven')
        sh 'mvn clean install -Dlicense.skip=true'
      }
    }

    stage('test') {
      steps {
        echo 'testing'
        sh 'jenkins/test.sh'
      }
    }

    stage('deploy') {
      steps {
        echo 'deplying'
        sh 'jenkins/deploye.sh'
      }
    }

  }
  tools {
    maven 'jenkins-test'
  }
}