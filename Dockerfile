FROM docker:18.09.1 AS docker

FROM ubuntu:18.04

# install docker client
COPY --from=docker /usr/local/bin/docker /usr/local/bin/docker

# install golang & ruby
RUN apt-get -y update
RUN apt-get install -y build-essential git-core curl vim
RUN apt-get install -y golang-go
RUN apt-get install -y ruby-full

# install nodejs
RUN curl -sL https://deb.nodesource.com/setup_11.x | bash -
RUN apt-get install -y nodejs

# install docker-compose
RUN curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose

# install kubectl
RUN curl -L "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" -o /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl

# setup okteto message
COPY bashrc /root/.bashrc
