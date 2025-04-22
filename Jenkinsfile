pipeline {
    agent any

    environment {
        IMAGE_NAME = 'dharani/spring-boot-url-shortener'
        DOCKER_COMPOSE_FILE = 'docker-compose.yml'
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/your-username/your-repo.git'
            }
        }

        stage('Build Project') {
            steps {
                sh './mvnw clean package -DskipTests'
            }
        }

        stage('Run Unit Tests') {
            steps {
                sh './mvnw test'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh './mvnw spring-boot:build-image -DdockerImageName=${IMAGE_NAME}'
            }
        }

        stage('Push Docker Image') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker-hub-creds', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                    sh """
                        echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAME --password-stdin
                        docker push ${IMAGE_NAME}
                    """
                }
            }
        }

        stage('Deploy with Docker Compose') {
            steps {
                sh 'docker-compose down || true'
                sh 'docker-compose up -d'
            }
        }
    }

    post {
        success {
            echo '✅ Build and Deployment successful!'
        }
        failure {
            echo '❌ Something went wrong. Check the logs!'
        }
    }
}
