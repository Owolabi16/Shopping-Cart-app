Project Name: Shopping Cart Application.

Project Description:
This project focuses on automating the deployment of infrastructure components on AWS using Terraform and implementing a CI/CD pipeline with Jenkins. The goal is to create a scalable and maintainable infrastructure setup that allows for efficient application deployment and updates.

The project involves the following key steps:

1. Infrastructure as Code: Utilize Terraform to provision 5 EC2 instances with remote access capabilities and an EKS cluster with 3 worker nodes. The infrastructure state will be managed remotely using AWS S3 and state locking with DynamoDB.

2. Jenkins Server Setup: Configure one of the EC2 instances as a Jenkins server, which will serve as the central hub for the CI/CD pipeline. Jenkins will be responsible for automating the build, test, and deployment processes.

3. Containerization with Docker: Containerize the application code using Docker to ensure portability and consistency across different environments. The Dockerized application will be made accessible externally to enable seamless deployment.

4. CI/CD Pipeline: Implement a CI/CD pipeline in Jenkins that integrates with the GitHub repository hosting the project code. This pipeline will automate the build, test, and deployment of the application to the Kubernetes cluster created in step 1. Docker registry will be used to store the Docker images, and Nginx Ingress Controller will be set up to manage traffic to the deployed services.

5. Monitoring Stack: Set up a monitoring stack using Prometheus and Grafana to monitor the health and performance of the Kubernetes cluster. This monitoring stack will provide valuable insights into the deployed services, enabling proactive issue detection and resolution.

The project aims to achieve infrastructure automation, efficient deployment, and continuous integration and delivery, resulting in a streamlined and scalable development process.

