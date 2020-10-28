pipeline {
  agent any
  stages {
    stage('build') {
      agent any
      steps {
        echo 'building'
        tool(name: 'jenkins-test', type: 'maven')
        sh 'mvn package'
      }
    }

    stage('test') {
      steps {
        echo 'testing'
      }
    }

    stage('deploy') {
      steps {
        echo 'deplying'
        sh 'ls'
        sh 'pwd'
        sh 'docker build .'
      }
    }

  }
  tools {
    maven 'jenkins-test'
  }
}