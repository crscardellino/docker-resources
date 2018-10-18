# reference: https://hub.docker.com/_/ubuntu/
FROM debian:stretch

# Adds metadata to the image as a key value pair example LABEL version="1.0"
LABEL maintainer="Cristian Cardellino <https://crscardellino.github.io/>"
LABEL version="1.0"

##Set environment variables
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN apt-get update --fix-missing && \
apt-get install -y bzip2 ca-certificates \
    build-essential \
    curl \
    git-core \
    htop \
    pkg-config \
    python3-dev \
    python3-pip \
    python-setuptools \
    python-virtualenv \
    vim \
    unzip && \
apt-get clean && \
rm -rf /var/lib/apt/lists/*

# Download a couple of standar dotfiles

RUN curl -s -o /root/.bashrc https://raw.githubusercontent.com/crscardellino/dotfiles/master/.bashrc
RUN curl -s -o /root/.gitconfig https://raw.githubusercontent.com/crscardellino/dotfiles/master/.gitconfig
RUN curl -s -o /root/.vimrc https://raw.githubusercontent.com/crscardellino/dotfiles/master/.vanillavimrc

RUN echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh && \
    curl -s https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh -o ~/anaconda.sh && \
    /bin/bash ~/anaconda.sh -b -p /opt/conda && \
    rm ~/anaconda.sh

ENV PATH /opt/conda/bin:$PATH

# Extra libraries not available in anaconda
RUN /opt/conda/bin/pip --no-cache-dir install --upgrade pip
RUN /opt/conda/bin/pip --no-cache-dir install --upgrade keras
RUN /opt/conda/bin/pip --no-cache-dir install --upgrade tensorflow
RUN /opt/conda/bin/pip --no-cache-dir install --upgrade ggplot
RUN /opt/conda/bin/pip --no-cache-dir install --upgrade pandasql
RUN /opt/conda/bin/pip --no-cache-dir install --upgrade tqdm
RUN /opt/conda/bin/pip --no-cache-dir install --upgrade ipdb
RUN /opt/conda/bin/pip --no-cache-dir install --upgrade jupyter_dashboards
RUN /opt/conda/bin/jupyter dashboards quick-setup --sys-prefix

# Open Ports for Jupyter
EXPOSE 7698

#Setup File System
RUN mkdir ds
ENV SHELL=/bin/bash
ENV EDITOR=vim
VOLUME /ds
WORKDIR /ds

# Run the shell
CMD  ["/bin/bash"]
