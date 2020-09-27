pipeline {
  agent any
  stages {
    stage('Test') {
      when {
        branch 'master'
      }
      steps {
        sh 'cookstyle .'
        echo 'This is where we\'d normally do a version check.'
        sh 'kitchen test'
      }
    }
  }
}