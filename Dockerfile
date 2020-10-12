FROM node:12.19.0-buster-slim

RUN apt-get update

# install aws cli
RUN apt-get -y install \
    curl unzip && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscli.zip" && \
    unzip ./awscli.zip && \
    bash ./aws/install && \
    rm -r ./aws*

# install amplify cli
RUN apt-get -y install \
    openssh-client git gpgconf curl && \
    npm install -g @aws-amplify/cli