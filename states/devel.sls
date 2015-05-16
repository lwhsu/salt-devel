zsh:
  pkg.installed

lwhsu:
  user.present:
    - fullname: Li-Wen Hsu
    - shell: /usr/local/bin/zsh
    - home: /home/lwhsu
    - uid: 1001
    - gid: 20
    - groups:
      - wheel
    - require:
      - pkg: zsh
  ssh_auth.present:
    - user: lwhsu
    - source: http://lwhsu.org/authorized_keys

sudo:
  pkg.installed

/usr/local/etc/sudoers.d/wheel:
  file.managed:
    - source: salt://wheel
    - user: root
    - group: wheel
    - mode: 0440
