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
        sh 'npm install'
        sh 'npm run build'
      }
    }
    stage('Deploy') {
      when {
        expression { params.ENVIRONMENT == 'staging' || params.ENVIRONMENT == 'prod' }
      }
      steps {
        sh "ssh deploy@${params.ENVIRONMENT}.example.com 'cd /var/www && git pull origin master'"
      }
    }
  }
}
