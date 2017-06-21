FROM ubuntu:16.04

RUN apt-get update \
      && apt-get install --no-install-recommends --no-install-suggests -y \
      python-dev \
      python-pip \
      gcc \
      libssl-dev \
      curl \
      groff \
      && pip install --upgrade pip setuptools \
      && pip install netaddr awscli ansible Jinja2 \
      && rm -rf /var/lib/apt/lists/*

RUN curl -L -o /usr/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl \
      && chmod +x /usr/bin/kubectl

WORKDIR /srv

VOLUME ["/srv", "/root"]
