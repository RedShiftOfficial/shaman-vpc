#!/bin/bash -x
clear
#   --entrypoint bash \
sudo podman run -it --rm \
    --pull always \
    --name devkit-vpc \
    --entrypoint bash \
    --workdir /root/deploy/terraform/devkit-vpc \
    --volume $(pwd):/root/deploy/terraform/devkit-vpc:z \
    --volume $(pwd)/aws/:/root/.aws/:z \
  docker.io/codesparta/konductor
