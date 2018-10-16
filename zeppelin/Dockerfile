# reference: https://hub.docker.com/_/ubuntu/
FROM apache/zeppelin:0.8.0

# Adds metadata to the image as a key value pair example LABEL version="1.0"
LABEL maintainer="Cristian Cardellino <https://crscardellino.github.io/>"
LABEL version="1.0"

# TODO: See how to install in the created environment 
RUN /opt/conda/bin/conda create --name python36 python=3.6 anaconda
RUN /opt/conda/envs/python36/bin/pip install -U pip pandasql

# Run the shell
CMD ["bin/zeppelin.sh"]
