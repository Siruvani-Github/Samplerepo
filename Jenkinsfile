pipeline {
    agent any
    stages {
        stage('clone') {
            steps {
                sh "rm -rf *"
                git branch: 'main', url: 'https://github.com/Siruvani-Github/Samplerepo.git'
            }
        }
        / install
        stage('install') {
            steps {
                sh "ansible-playbook --extra-vars portnumber= ${params.Portnumber} $WORKSPACE/ansible.yaml"
            }
        }
    }
}
