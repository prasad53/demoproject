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
                sh 'docker build -t prasad53/jenkins-java:1.0 .'
            }
        }

        stage('Push image'){
            steps {
                withCredentials([usernamePassword(credentialsId: 'image-cred', passwordVariable: 'docker_pwd', usernameVariable: 'docker_usr')]) {
                    sh '''
                    docker login -u $docker_usr -p $docker_pwd

                    docker push prasad53/jenkins-java:1.0
                    '''
                }
            }
        }

        stage('Pull image'){
            steps {
                withCredentials([usernamePassword(credentialsId: 'image-cred', passwordVariable: 'docker_pwd', usernameVariable: 'docker_usr')]) {
                    sh '''
                    
                    docker pull prasad53/jenkins-java:1.0
                    '''
                }
            }
        }
    }
}

