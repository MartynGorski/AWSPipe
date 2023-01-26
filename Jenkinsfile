pipeline {
    agent any
    stages {
        stage("install apache and restart service") {
            steps {
                script {
                    sh ''sudo yum install -y httpd''
                    sh ''sudo systemctl restart httpd''
                }
            }
        }
        stage("remove previous html") {
            steps {
                script {
                    sudo rm -rf "/var/www/*"
                    sudo rm -rf "/var/www/html/.git"
                }
            }
        }
        stage("clone repo") {
            steps {
                script {
                    ''sudo git clone "https://github.com/MartynGorski/AWSPipe.git" "/var/www/html/"''
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