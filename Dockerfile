FROM byeongal/ubuntu20.04-cuda11.2.2-python3.8.10

USER root
## Basic Env
ENV \
    SHELL="/bin/bash" \
    HOME="/root"  \
    USER_GID=0
WORKDIR $HOME

# Install package from requirements.txt
COPY requirements.txt ./requirements.txt
RUN pip install -r ./requirements.txt && rm requirements.txt

ENV WORKSPACE_HOME="/workspace"
WORKDIR $WORKSPACE_HOME

COPY start.sh /scripts/start.sh
RUN ["chmod", "+x", "/scripts/start.sh"]
ENTRYPOINT "/scripts/start.sh"
