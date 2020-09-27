pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        sh 'sudo rm -rf .kitchen/'
        sh 'cookstyle .'
        sh 'sudo kitchen test'
      }
    }

  }
}