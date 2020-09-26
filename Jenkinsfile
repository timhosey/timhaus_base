pipeline {
  agent any
  stages {
    stage('Setup') {
      steps {
        sh '''apt-get install -y sudo
curl -L https://omnitruck.chef.io/install.sh | sudo bash -s -- -P chef-workstation'''
      }
    }

    stage('Test') {
      steps {
        sh 'cookstyle .'
      }
    }

  }
}