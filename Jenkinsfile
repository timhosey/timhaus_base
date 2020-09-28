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
        sh 'chef install'
        sh 'chef push prod'
        script {
          POLICIES = sh (script: "/opt/chef-workstation/bin/knife node list", returnStdout: true).trim().split()
          POLICIES.each { item ->
            echo "Chef-Client Run for ${PI_USER}@${item}.tim.haus..."
            try {
              runOutput = sh (script: """set +x
              /opt/chef-workstation/bin/knife ssh ${item} 'sudo chef-client' -x ${PI_USER} -P ${PI_PASS}
              set -x""", returnStdout: true).trim()
              echo runOutput
            } catch (e) {
              echo 'The run failed.'
              echo e.getMessage()
            }
          }
        }
      }
    }
  }
}