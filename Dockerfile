FROM python:3.8

LABEL maintainer "tiewkeehui95@hotmail.com"

RUN mkdir /mlflow/

RUN pip install mlflow google-cloud-storage boto3 psycopg2 scikit-learn

ENV MLFLOW_HOME /mlflow
ENV SERVER_PORT 5000
ENV SERVER_HOST 0.0.0.0
ENV FILE_STORE ${MLFLOW_HOME}/fileStore
ENV ARTIFACT_STORE ${MLFLOW_HOME}/artifactStore

COPY run.sh ${MLFLOW_HOME}/scripts/run.sh
RUN chmod +x ${MLFLOW_HOME}/scripts/run.sh

EXPOSE ${SERVER_PORT}

WORKDIR ${MLFLOW_HOME}

ENTRYPOINT ["./scripts/run.sh"]