#!/usr/bin/env groovy
pipeline {
    agent any

    stages {
        stage('deploy to eks') {
            steps {
                script {
                    sh 'aws eks update-kubeconfig --region eu-west-2 --name aliu_eks_cluster'
                    sh 'kubectl apply -f deployment.yml'
                    sh 'kubectl apply -f service.yml'
                }
            }
            
        }
        stage('setup Nginx ingress controller') {
            steps{
                script {
                    sh 'kubectl apply -f ingress-controller.yml'
                    sh 'kubectl apply -f ingress.yml'
                }
            }
        }
        stage('setup Prometues and Grafana') {
            steps {
                script {
                    sh 'kubectl create -f setup/'
                    sh 'kubectl create -f manifests/'
                }
            }
        }
    }
}