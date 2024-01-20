pipeline {
    agent any
    stages {
        stage('clone') {
            steps {
                sh "rm -rf *"
                git branch: 'main', url: 'https://github.com/Siruvani-Github/Samplerepo.git'
            }
        }
        stage('install') {
            steps {
                    script {
                   def port = readFile '/etc/apache2/ports.conf'
                   echo "apache2 port details ${port}"
                   def lines = "${port}".readLines()
                   def apache_port = "${lines[4]}".substring(7)
                   echo "apache_port is ${apache_port}"
                   if ("${params.Portnumber}" == "${apache_port}")
                    {
                    echo "Port Number already assigned"    
               // sh "ansible-playbook --extra-vars 'portnumber=${params.Portnumber}' $WORKSPACE/ansible.yaml"
               // sh "echo Portnumber is ${params.Portnumber} > Port_details.txt "
            }
                else {
                    sh "ansible-playbook --extra-vars 'portnumber=${params.Portnumber}' $WORKSPACE/ansible.yaml"
                }   
            }
        
        
    post {
         always {
             echo 'This will always run'
         }
         success {
                  sh "echo Portnumber is ${params.Portnumber} > Port_details.txt "
                  echo ' Ansible Script executed and Apache Installed'
                  emailext attachLog: true, attachmentsPattern: 'Port_details.txt',
                  body: "${currentBuild.currentResult}: Job: ${env.JOB_NAME} build: ${env.BUILD_NUMBER}\n More info at: ${env.BUILD_URL}",
                  to:"ks.sendhil@gmail.com",subject: "Jenkins Build ${currentBuild.currentResult}: Job ${env.JOB_NAME}"
             // mail bcc: '', body: "<b>Example</b><br>Project: ${env.JOB_NAME} <br>Build Number: ${env.BUILD_NUMBER} <br> URL de build: ${env.BUILD_URL} ", charset: 'UTF-8', from: '', mimeType: 'text/html', replyTo: '', subject: "Apache Build Sucess: Project name -> ${env.JOB_NAME}", to: "ks.sendhil@gmail.com";
                           
         }
         failure {
             echo 'Pipe Line Failed'
             // Sending an email notification with details about the failure
             mail bcc: '', body: "<b>Example</b><br>Project: ${env.JOB_NAME} <br>Build Number: ${env.BUILD_NUMBER} <br> URL de build: ${env.BUILD_URL}", charset: 'UTF-8', from: '', mimeType: 'text/html', replyTo: '', subject: "ERROR CI: Project name -> ${env.JOB_NAME}", to: "ks.sendhil@gmail.com";
         }
         unstable {
             echo 'This will run only if the run was marked as unstable'
         }
     }
    }
}
}
} 
