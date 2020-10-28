node {
  stage('SCM Checkout'){
    git 'https://github.com/majidGMZ/jenkins-test'
  }
  stage('Compile-Package'){
    def mvnHome = tool name: 'jenkins-test', type: 'maven'
    sh "${mvnHome}/bin/mvn package"
  }
}
