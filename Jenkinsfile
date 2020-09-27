pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        sh 'cookstyle .'
        echo 'This is where we\'d normally do a version check.'
        sh 'kitchen test'
      }
    }
  }
}