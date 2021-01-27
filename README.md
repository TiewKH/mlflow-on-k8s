# MLFlow On Kubernetes
High level setup on GCP:
1. Create Postgres Cloud SQL instance
2. Fill up k8s/secret.yaml with correct connection string
3. Setup GCS bucket
4. Build and push image to GCR
5. Fill up k8s/deployment.yaml with correct bucket name and image

# To build image
```docker build . -t mlflow:v1```

# To run image locally
```docker run --name mlflow -d -p 5000:5000 mlflow:v1```
