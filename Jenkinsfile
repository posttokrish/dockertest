properties([
  parameters([
    string(name: 'ENVIRONMENT', defaultValue: 'dev', description: 'Which environment to deploy to: dev, staging, or prod'),
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
    stage('Deploy') {
      when {
        expression { params.ENVIRONMENT == 'staging' || params.ENVIRONMENT == 'prod' }
      }
      steps {
        sh "echo in Build Deploy"
      }
    }
    stage('Monitor') {
      when {
        expression { params.ENVIRONMENT == 'test' || params.ENVIRONMENT == 'prod' }
      }
      steps {
        sh "echo in Build  Monitor"
      }
    }
  }
}
