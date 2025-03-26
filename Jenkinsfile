pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/NaveenSMB/Full-Stack-CI-CD-Deployment-with-Docker-AWS'  
            }
        }
        stage('Run Terraform') {
            steps {
                sh '''
                cd terraform
                terraform init
                terraform apply -auto-approve
                '''  
            }
        }
        stage('Configure Server with Ansible') {
            steps {
                sh '''
                cd ansible
                ansible-playbook -i inventory playbook.yml
                '''  
            }
        }
    }
}

