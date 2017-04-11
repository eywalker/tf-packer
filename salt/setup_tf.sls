python-pip:
  pkg.installed:
    - pkgs:
      - python3-dev
      - python3-pip

pydev:
  pip.installed:
    - bin_env: '/usr/bin/pip3'
    - requirements: 'salt://requirements.txt'
    - require:
      - pkg: python-pip

tensorflow-gpu:
  pip.installed:
    - bin_env: '/usr/bin/pip3'
    - require:
      - pkg: python-pip
