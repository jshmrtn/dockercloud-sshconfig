# sshconfig

[![Deploy to Docker Cloud](https://files.cloud.docker.com/images/deploy-to-dockercloud.svg)](https://cloud.docker.com/stack/deploy/)

Changes the hosts default ssh port using a container.

## Usage

    docker run -v /etc/ssh:/etc/ssh -e SSH_PORT="2222" jshmrtn/sshconfig

## Usage in Docker Cloud

We recommend using this image in Docker Cloud as follows:

    sshconfig:
      image: jshmrtn/sshconfig
      deployment_strategy: every_node
      autodestroy: always
      environment:
        - SSH_PORT=2222
      volumes:
        - /etc/ssh:/etc/ssh:rw
