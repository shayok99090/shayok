version: 0.0
os: linux
files:
  - source: /
    destination: /var/www/myapp
hooks:
  - BeforeInstall:
      - location: scripts.sh
        timeout: 600
        runas: root
