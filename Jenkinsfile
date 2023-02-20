properties([
  parameters([
    string(name: 'GIT_REPO', description: 'Git repository URL'),
    string(name: 'GIT_BRANCH', description: 'Git branch to build'),
  ])
])
pipeline {
  agent any
  
  stages {
    stage('Build') {
      steps {
        sh 'echo in Build stage'
      }
    }
    stage('Scan') {
      when {
        expression { params.ENVIRONMENT == 'staging' || params.ENVIRONMENT == 'prod' }
      }
      steps {
        sh "echo in Build Scan"
      }
    }
    stage('Deploy') {
      when {
        expression { params.ENVIRONMENT == 'test' || params.ENVIRONMENT == 'prod' }
      }
      steps {
        sh "echo in Build  Deploy"
      }
    }
  }
}
