# Service Repository

## 📌 Overview
This repository contains the source code and deployment workflows for a Go-based service and implemented github actions pipeline to build, push image and update repostory kubernetes manifest

## 📂 Folder Structure
```
.
├── .github
│   └── workflows
│       ├── deploy-production.yml       # Workflow for deploying to production
│       ├── deploy-staging.yml          # Workflow for deploying to staging
│       └── feature.yml                 # Workflow for feature branch testing
├── Dockerfile                          # Docker build configuration
├── go.mod                              # Go module dependencies
├── main.go                             # Main application entry point
├── main_test.go                        # Unit tests for the application
```

## 🚀 Getting Started
### Prerequisites
- Go 1.23+
- Docker
- GitHub Actions (for CI/CD workflows)

### Running the Application Locally
1. Clone the repository:
   ```sh
   git clone git@github.com:shaldyrz/service-go.git
   cd service
   ```
2. Build and run the application:
   ```sh
   go run main.go
   ```
3. Run tests:
   ```sh
   go test ./...
   ```

## 📦 Docker Usage
### Build the Docker image on local environment
```sh
docker build -t service-go:latest .
```
### Run the container
```sh
docker run -p 8080:8080 service-go:latest
```

## 🔧 CI/CD Workflows
This repository is integrated with GitHub Actions for automated builds and deployments:
- **deploy-production.yml**: Deploys the service to the production environment.
- **deploy-staging.yml**: Deploys the service to the staging environment.
- **feature.yml**: Runs tests and checks for feature branches.