Pipeline {
    agent any
    stages {
        stage ("perform terraform initialization") {
            steps {
                sh ' terraform init'
            }
        }

        stage ("apply terrform") {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
}