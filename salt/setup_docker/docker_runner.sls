# state pertaining to docker cluster formation
include:
  - docker
  - docker.compose


docker_service:
  service.running:
    - name: docker
