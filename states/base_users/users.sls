shells:
  pkg.installed:
    - pkgs:
      - zsh


eboli:
  user.present:
    - fullname: Emmanuel BOLI
    - shell: /bin/zsh
    - groups:
      - wheel
    - home: /home/eboli
    - require:
      - pkg:
        - zsh
  ssh_auth.present:
    - user: eboli
    - source: salt://base_users/ssh_keys/eboli.pub
    - config: '%h/.ssh/authorized_keys'
      