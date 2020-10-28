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
        sh 'java -jar ../jenkins-test_master@2/target/jenkinscd-0.0.1-SNAPSHOT.war'
      }
    }

  }
  tools {
    maven 'jenkins-test'
  }
}