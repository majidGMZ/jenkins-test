pipeline {
  agent any
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
}