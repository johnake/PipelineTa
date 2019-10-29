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
                sh 'terraform apply -auto-approve'
            }
        }
    }
}