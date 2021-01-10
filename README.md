# To build image
docker build . -t mlflow:v1

# To run image locally
docker run --name mlflow -d -p 5000:5000 mlflow:v1 