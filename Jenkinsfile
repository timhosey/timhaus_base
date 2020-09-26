pipeline {
  agent any
  stages {
    stage('Cookstyle') {
      steps {
        sh 'docker exec -it -v .:/files chef/chefworkstation cookstyle /files'
      }
    }

  }
}