pipeline {
  agent any
  stages {
    stage('Setup') {
      steps {
        sh 'curl -L https://omnitruck.chef.io/install.sh | bash -s -- -P chef-workstation'
      }
    }

    stage('Test') {
      steps {
        sh 'cookstyle .'
      }
    }

  }
}