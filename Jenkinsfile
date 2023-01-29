pipeline {
    agent any
    stages {
        stage("remove previous container") {
            steps {
                script {
                    sh 'sudo docker rm -f $(sudo docker ps -a -q)'
                }
            }
        }
        stage("build new image") {
            steps {
                script {
                    sh 'sudo docker /home/ec2-user/workspace/AWSTestPipeline -t AWSTestPipeline'
                }
            }
        }
        stage("clone repo") {
            steps {
                script {
                    sh 'docker run -it -p 9000:9000'
                }
            }
        }
        stage("deploy") {
            steps {
                script {
                    sh 'echo Running at port 9000'
                }
            }
        }
    }   
}