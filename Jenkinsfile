pipeline {
  agent any
  stages {
    stage('Test') {
      when {
        expression { env.CHANGE_ID ==~ /.*/ }
      }
      steps {
        sh 'cookstyle .'
        echo 'This is where we\'d normally do a version check.'
        sh 'kitchen test'
      }
    }
    stage('Deploy') {
      when {
        branch 'master'
      }
      steps {
        chef install
        chef push dev
      }
    }
  }
}