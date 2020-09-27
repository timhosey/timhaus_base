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
            script: "knife search node 'policy_name:timhaus_base AND policy_group:prod'",
            returnStdout: true
          ).trim().split('\n')
        }
        echo_all(POLICIES)
      }
    }
  }
}

@NonCPS // has to be NonCPS or the build breaks on the call to .each
def echo_all(list) {
    list.each { item ->
        echo "Node: ${item}"
    }
}