pipeline {
    agent any  
    environment {
        SERVICE_NAME = "bulbclass"
        ORGANIZATION_NAME = "jenkins"
        DOCKERHUB_USERNAME = "saurabhtandon"
        REPOSITORY_TAG = "${DOCKERHUB_USERNAME}/${ORGANIZATION_NAME}-${SERVICE_NAME}:${BUILD_ID}"
    }
   
    stages {
       stage ('Build and Push Image') {
            steps {
                   sh 'whoami'
                 withDockerRegistry([credentialsId: 'docker-login-creds', url: ""]) {
                   sh 'docker build -t ${REPOSITORY_TAG} .'
                   sh 'docker push ${REPOSITORY_TAG}'          
            }
          }
       }
    }
}
