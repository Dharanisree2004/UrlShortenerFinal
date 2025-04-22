pipeline {
    agent any

    environment {
        IMAGE_NAME = 'dharani/spring-boot-url-shortener'
        DOCKER_COMPOSE_FILE = 'docker-compose.yml'
        APP_PORT = '8081'
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/Dharanisree2004/UrlShortenerFinal.git'
            }
        }

        stage('Build Project') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Run Unit Tests') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'mvn spring-boot:build-image -DdockerImageName=${IMAGE_NAME}'
            }
        }

        stage('Deploy with Docker Compose') {
            steps {
                sh 'docker-compose down || true'
                sh 'docker-compose up -d'
            }
        }

        stage('Check App URL') {
            steps {
                echo "🌐 Your app should be available at: http://localhost:${APP_PORT}/"
            }
        }
    }

    post {
        success {
            echo '✅ CI/CD pipeline completed successfully.'
        }
        failure {
            echo '❌ Pipeline failed. Please check the logs.'
        }
    }
}
