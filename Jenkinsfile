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
        sh 'java -jar jenkinscd-0.0.1-SNAPSHOT.war'
      }
    }

  }
  tools {
    maven 'jenkins-test'
  }
}