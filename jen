pipeline {
  agent any
  stages {
    stage ('Install GIT') {
      steps {
        sh 'yum install git -y'
        sh 'git -version'
    }
    }
    stage ('Install node') {
      steps {
        sh 'yum install mysql -y'
        sh 'mysql -v'
      }
    }
  }
}
