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
          POLICIES = sh (
            script: "/opt/chef-workstation/bin/knife node list",
            returnStdout: true
          ).trim().split('\n')
        }
        run_all(POLICIES)

      }
    }
  }
}

@NonCPS // has to be NonCPS or the build breaks on the call to .each
def run_all(list) {
    list.each { item ->
      echo "Chef-Client Run for ${PI_USER}:${PI_PASS}@${item}.tim.haus"
      printWithNoTrace "ssh -o 'StrictHostKeyChecking no' ${PI_USER}:${PI_PASS}@${item}.tim.haus '( sudo chef-client )'"
    }
}

def printWithNoTrace(cmd) {
  steps.sh (script: '#!/bin/sh -e\n'+ cmd, returnStdout: true)
}