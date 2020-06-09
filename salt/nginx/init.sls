depends-pkgs:
  cmd.run:
    - name: yum install epel-release -y

nginx:
  pkg.installed: []
  service.running:
    - require:
      - pkg: nginx
