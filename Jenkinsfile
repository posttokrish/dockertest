pipeline {
    agent any
    stages {
        stage('Setup parameters') {
            steps {
                script { 
                    properties([
                        parameters([
                            text(
                                defaultValue: '''
                                Parameter1_from_Jenkins
                                ''', 
                                 name: 'MULTI-LINE-STRING'
                            ),
                            string(
                                defaultValue: 'Parameter2_from_Jenkins', 
                                name: 'PARAMETER_1', 
                                trim: true
                            ),
                            string(
                                defaultValue: 'Parameter2_from_Jenkins', 
                                name: 'PARAMETER_2', 
                                trim: true
                            )
                        ])
                    ])
                }
            }
        }
    }   
}
