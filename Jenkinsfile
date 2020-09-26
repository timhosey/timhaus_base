pipeline {
  agent any
  stages {
    stage('Setup') {
      steps {
        sh 'curl -L https://omnitruck.chef.io/install.sh | sudo bash -s -- -v 15.8.23 -P chef-workstation'
      }
    }

    stage('Test') {
      steps {
        sh 'cookstyle .'
      }
    }

  }
}