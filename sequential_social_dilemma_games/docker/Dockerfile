FROM nvidia/cuda:12.2.0-runtime-ubuntu20.04

ENV TZ=Asia/Jerusalem
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Apt updates
RUN 	apt-get update \
	&&  apt-get install -y \
		build-essential \
		zlib1g-dev \
		git \
		libreadline-gplv2-dev \
		libncursesw5-dev \
		libssl-dev \
		libsqlite3-dev \
		tk-dev \
		libgdbm-dev \
		libc6-dev \
		libbz2-dev \
		tmux \
		wget \
		python3-tk \
        python3-pip

# Install project-specific python libraries
RUN pip install tensorflow \
				gym \
				gymnasium \
				matplotlib \
				opencv-python \
				lz4 \
				psutil \
				flake8 \
				ray \
				dm_tree \
				pyarrow \
				pandas \
				scipy


WORKDIR /project

ENTRYPOINT ["/bin/bash"]
