pipeline {
    agent {
        docker {
            image "ruby"
            args "--link selenium"
        }
    }
    stages {
        stage("Build") {
            steps {
                sh "bundle install"
            }
        }
        stage("Run Tests") {
            steps {
                script {
                    try {
                        sh "bundle exec cucumber -p ci"
                    } finally {
                        cucumber fileIncludePattern: '**/*.json', jsonReportDirectory: 'log', sortingMethod: 'ALPHABETICAL'
                    }
                }
            }
        }
    }
}
