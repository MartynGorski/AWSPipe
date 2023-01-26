pipeline {
    agent any
    stages {
        stage("install apache and restart service") {
            steps {
                script {
                    sh 'sudo yum install -y httpd'
                    sh 'sudo systemctl restart httpd'
                }
            }
        }
        stage("remove previous html") {
            steps {
                script {
                    sh 'sudo rm -rf /var/www/*'
                    sh 'sudo rm -rf /var/www/html/.git'
                }
            }
        }
        stage("clone repo") {
            steps {
                script {
                    sh 'sudo git clone https://github.com/MartynGorski/AWSPipe.git" /var/www/html/'
                }
            }
        }
        stage("deploy") {
            steps {
                script {
                    echo "deploying"
                }
            }
        }
    }   
}