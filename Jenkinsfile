pipeline {
  agent any
  environment {
        AWS_ACCESS = credentials('AWS')
    }
  stages {
    stage('TF INIT'){
        steps {
            sh '''
            export HOME=${WORKSPACE}
            export AWS_ACCESS_KEY_ID=$AWS_ACCESS_USR
            export AWS_SECRET_ACCESS_KEY=$AWS_ACCESS_PSW
            
            terraform init
            
            unset AWS_ACCESS_KEY_ID
            unset AWS_SECRET_ACCESS_KEY
            '''
        }
    }
    stage('TF PLAN'){
        steps {
            sh '''
            export HOME=${WORKSPACE}
            export AWS_ACCESS_KEY_ID=$AWS_ACCESS_USR
            export AWS_SECRET_ACCESS_KEY=$AWS_ACCESS_PSW
            
            terraform plan
            
            unset AWS_ACCESS_KEY_ID
            unset AWS_SECRET_ACCESS_KEY
            '''
        }
    }
    stage('TF APPLY'){
        steps {
            timeout(time: 2, unit: "MINUTES") {
	                    input message: 'Do you want to approve the deployment?', ok: 'Yes'
	                }
            sh '''
            export HOME=${WORKSPACE}
            export AWS_ACCESS_KEY_ID=$AWS_ACCESS_USR
            export AWS_SECRET_ACCESS_KEY=$AWS_ACCESS_PSW
            
            terraform apply -y
            
            unset AWS_ACCESS_KEY_ID
            unset AWS_SECRET_ACCESS_KEY
            '''
        }
    }

}