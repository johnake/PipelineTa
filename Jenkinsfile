pipeline {
    agent any
    stages {
        stage ("perform terraform initialization") {
            steps {
                sh 'cd infra && terraform init'
            }
        }

        stage ("apply terrform") {
            steps {
                withCredentials([usernamePassword(credentialsId: 'AWS_DEV_SECRET', passwordVariable: 'my_aws_secret', usernameVariable: 'my_aws_key')]) {
                sh "cd infra  && AWS_ACCESS_KEY_ID=$my_aws_key AWS_SECRET_ACCESS_KEY=$my_aws_secret terraform apply -auto-approve" 
            }
        }
    }
}
