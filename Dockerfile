FROM pytorch/pytorch:1.9.0-cuda10.2-cudnn7-runtime

USER root

## Basic Env
ENV \
    SHELL="/bin/bash" \
    HOME="/root"  \
    USER_GID=0
WORKDIR $HOME

# Layer cleanup script
COPY clean-layer.sh  /usr/bin/clean-layer.sh
COPY fix-permissions.sh  /usr/bin/fix-permissions.sh

# Make clean-layer and fix-permissions executable
RUN \
  chmod a+rwx /usr/bin/clean-layer.sh && \
  chmod a+rwx /usr/bin/fix-permissions.sh

# Generate and Set locals (Not recommended to edit)
# https://stackoverflow.com/questions/28405902/how-to-set-the-locale-inside-a-debian-ubuntu-docker-container#38553499
RUN \
    apt-get update && \
    apt-get install -y locales && \
    # install locales-all?
    sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    update-locale LANG=en_US.UTF-8 && \
    # Cleanup
    clean-layer.sh

ENV LC_ALL="en_US.UTF-8" \
    LANG="en_US.UTF-8" \
    LANGUAGE="en_US:en"

# Install basics (Not recommended to edit)
RUN \
    apt-get update --fix-missing && \
    apt-get install -y sudo apt-utils && \
    apt-get upgrade -y && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
        # This is necessary for apt to access HTTPS sources:
        apt-transport-https \
        curl \
        wget \
        cron \
        git \
        zip \
        gzip \
        unzip && \
    # Fix all execution permissions
    chmod -R a+rwx /usr/local/bin/ && \
    # Fix permissions
    fix-permissions.sh $HOME && \
    # Cleanup
    clean-layer.sh

# If python is not installed in the image you are using, install python here.
# <Code for Installing Python>

# Install package from requirements.txt (Not recommended to edit)
COPY requirements.txt ./requirements.txt
RUN pip install -r ./requirements.txt && clean-layer.sh && rm requirements.txt

# Dev tools for Ainize Workspace.
## Install Jupyter Notebook (Not recommended to edit)
RUN \
    pip install notebook==6.4.0 ipywidgets==7.6.3 jupyter_contrib_nbextensions==0.5.1 autopep8==1.5.7 yapf==0.31.0 && \
    jupyter contrib nbextension install && \
    clean-layer.sh

## Install ttyd. (Not recommended to edit)
RUN apt-get update && apt-get install -y --no-install-recommends \
        yarn \
        make \
        g++ \
        cmake \ 
        pkg-config \
        git \
        vim-common \
        libwebsockets-dev \
        libjson-c-dev \
        libssl-dev 
RUN \
    wget https://github.com/tsl0922/ttyd/archive/refs/tags/1.6.2.zip \
    && unzip 1.6.2.zip \
    && cd ttyd-1.6.2 \
    && mkdir build \ 
    && cd build \
    && cmake .. \
    && make \
    && make install

## Install Visual Studio Code Server (Not recommended to edit)
RUN curl -fsSL https://code-server.dev/install.sh | sh && \
    clean-layer.sh

# Make folders (Not recommended to edit)
ENV WORKSPACE_HOME="/ainize-workspace"
RUN \
    if [! -e $WORKSPACE_HOME] ; then \
        mkdir $WORKSPACE_HOME && chmod a+rwx $WORKSPACE_HOME; \
    else \
        chmod a+rwx $WORKSPACE_HOME; \
    fi
ENV HOME=$WORKSPACE_HOME
WORKDIR $WORKSPACE_HOME

COPY start.sh /scripts/start.sh
RUN ["chmod", "+x", "/scripts/start.sh"]
ENTRYPOINT "/scripts/start.sh"
