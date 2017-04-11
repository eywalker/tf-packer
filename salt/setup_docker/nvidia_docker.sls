nvidia-modprobe:
  pkg.installed:
    - refresh: True
{% set nvidia_docker_version='1.0.1' %}

install nvidia-docker:
  pkg.installed:
    - sources:
      - nvidia-docker: https://github.com/NVIDIA/nvidia-docker/releases/download/v{{ nvidia_docker_version }}/nvidia-docker_{{nvidia_docker_version}}-1_amd64.deb

# install pip and upgrade package as necessary
ndc-pip:
  pkg.installed:
    - name: python-pip
  pip.installed:
    - name: pip
    - upgrade: True

# install nvidia-docker-compose
install-ndc:
  pip.installed:
    - name: nvidia-docker-compose==0.0.5
    - upgrade: True
