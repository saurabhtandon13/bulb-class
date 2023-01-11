pipeline {
  agent any
  stages {
    stage ('Build') {
      steps {
        sh 'printenv'
        sh 'docker build -t frankisinfotech/bulbclass:""$BUILD_ID"" .'
      }
    }
    
     stage ('Publish to DockerHub') {
      steps {
        withDockerRegistry([credentialsId: "docker-hub", url: ""]) {
          sh 'docker push frankisinfotech/bulbclass:""$BUILD_ID""'
         }
       }
     }

  }
}
