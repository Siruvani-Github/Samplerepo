pipeline {
    agent any
    stages {
        stage('clone') {
            steps {
                sh "rm -rf *"
                git "https://github.com/Siruvani-Github/Samplerepo.git"
            }
        }
        stage('install') {
            steps {
                sh "ansible-playbook $WORKSPACE/ansible.yaml"
            }
        }
    }
}
