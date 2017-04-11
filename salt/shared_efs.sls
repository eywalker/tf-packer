nfs-common:
  pkg.installed:
    - refresh: True

/mnt/efs:
  mount.mounted:
    - device: 
    - fstype: nfs4
    - mkmnt: True
    - opts:
      - nfsvers=4.1
      - rsize=1048576
      - wsize=1048576
      - hard
      - timeo=600
      - retrans=2
