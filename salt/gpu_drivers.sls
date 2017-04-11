graphics_drivers:
  pkgrepo.managed:
    - ppa: graphics-drivers/ppa

nvidia-370:
  pkg.installed:
    - refresh: True
