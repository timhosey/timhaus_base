pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        sh 'cookstyle .'
        sh 'kitchen test'
      }
    }

  }
}