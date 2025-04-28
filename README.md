Here’s your updated **README.md** using only `mvn` (not `./mvnw`) — exactly matching your Jenkins pipeline steps:

---

# Spring Boot URL Shortener

**URL Shortener** is a service that shortens long URLs into short URLs, making them easier to share and manage.

---

## Prerequisites

- Java 21
- Docker
- Maven

---

## Tech Stack

- Spring Boot
- Spring Security
- Spring Data JPA
- PostgreSQL
- FlywayDB (Database Migrations)
- Thymeleaf (Frontend)
- Bootstrap (CSS Styling)

---

## How to Build and Run the Application

### 1. Clone the Repository
```shell
git clone https://github.com/Dharanisree2004/UrlShortenerFinal.git
cd UrlShortenerFinal
```

### 2. Build the Project
```shell
mvn clean package -DskipTests
```

### 3. Build Docker Image
You can build the Docker image using Spring Boot's build-image plugin:

```shell
# Build Docker image with custom name
mvn spring-boot:build-image -DdockerImageName=dharani/spring-boot-url-shortener
```

### 4. Deploy with Docker Compose
```shell
docker-compose down || true
docker-compose up -d
```

> **Note:** Ensure Docker is running before executing Docker Compose commands.

---

## Access the Application

Once deployed, your application will be available at:

```
http://localhost:8081/
```
