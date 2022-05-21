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


  /*  stages {
        stage('build image') {
            steps {
                sh 'docker build -t prasad53/jenkins-java:2.0 .'
            }
        }

        stage('Push image'){
            steps {
                withCredentials([usernamePassword(credentialsId: 'image-cred', passwordVariable: 'docker_pwd', usernameVariable: 'docker_usr')]) {
                    sh '''
                    docker login -u $docker_usr -p $docker_pwd

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
    }  */


    /*  stages {
          stage('Build image'){
              steps {
                  sh ' docker build -t prasad53/demopage:1.0 .'
              }
          }

          stage('Push image'){
            steps {
                withCredentials([usernamePassword(credentialsId: 'image-cred', passwordVariable: 'docker_pwd', usernameVariable: 'docker_usr')]) {
                    sh '''
                    docker login -u $docker_usr -p $docker_pwd

                    docker push prasad53/demopage:1.0
                    '''
                }
            }
        }

        stage('Run ansible playbook'){
              steps {
                  sh '''
                      
                      ansible-playbook  webpage.yaml
                      '''
              }
          }
        
      }*/




       stages {
        stage('build') {
            steps {
                sh '''
                   #!/bin/bash
                   DOMAIN_NAME="test.com"
                   if [[ "$DOMAIN_NAME" == "test.com" ]];then
                       echo "Matching"
                    else 
                       echo "Not matching"
                    fi   
                '''
            }
        }
       
    }  
}

