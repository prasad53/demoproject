pipeline {
    agent any

   /* stages {
        stage('build') {
            steps {
                echo 'Hello World'
            }
        }
        stage('test'){
            steps{
                echo "Running in test stage"
            }
        }
        stage('Deploy'){
            steps{
                echo "Running in deploy stage"
            }
        }
    }  */


    stages {
        stage('build image') {
            steps {
                sh 'docker build -t prasad53/jenkins-java:2.0 .'
            }
        }

        stage('Push image'){
            steps {
                withCredentials([usernamePassword(credentialsId: 'image-cred', passwordVariable: 'docker_pwd', usernameVariable: 'docker_usr')]) {
                    sh '''
                    

                    docker push prasad53/jenkins-java:2.0
                    '''
                }
            }
        }

        stage('Pull image'){
            steps {
                withCredentials([usernamePassword(credentialsId: 'image-cred', passwordVariable: 'docker_pwd', usernameVariable: 'docker_usr')]) {
                    sh '''
                    
                    docker pull prasad53/jenkins-java:2.0
                    '''
                }
            }
        }
    }
}

