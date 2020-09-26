pipeline {
  agent any
  stages {
    stage('Cookstyle') {
      steps {
        sh 'docker exec -it chef/chefworkstation cookstyle .'
      }
    }

  }
}