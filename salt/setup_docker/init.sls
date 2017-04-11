include:
  - .docker_runner
  - .nvidia_docker


## change Docker images to be placed in /mnt
#docker_systemd:
#  file.replace:
#    - name: /lib/systemd/system/docker.service
#    - pattern: 'ExecStart=/usr/bin/dockerd -H fd://'
#    - repl: 'ExecStart=/usr/bin/dockerd -g /mnt/docker -H fd://'
#
#
#restart_docker:
#  cmd.wait:
#    - name: 'systemctl daemon-reload && systemctl restart docker'
#    - watch:
#      - file: docker_systemd
#

nvidia/cuda:
  dockerng.image_present

# a necessary step to make sure nvidia-docker creates
# Docker volumes
test_run_nvidia_docker:
  cmd.wait:
    - name: 'nvidia-docker run --rm nvidia/cuda nvidia-smi'
    - watch:
      - dockerng: 'nvidia/cuda'
