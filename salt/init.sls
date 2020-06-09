install-latest-kernel:
  kernel.latest_installed: []

install-remi-repo:
  pkg.installed:
    - sources:
      - elrepo-release:  https://www.elrepo.org/elrepo-release-7.el7.elrepo.noar$

install-yum-utils:
  pkg.installed:
    - name: yum-utils

boot-latest-kernel:
  kernel.latest_wait:
    - at_time: 1
    - listen:
      - kernel: install-latest-kernel

