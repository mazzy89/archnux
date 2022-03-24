# -*- coding: utf-8 -*-
# vim: ft=yaml
---
users:
  ## Full list of pillar values
  salmazz:
    fullname: Salvatore Mazzarino
    password: ""
    enforce_password: true
    hash_password: true
    createhome: true
    # Disables user management except sudo rules.
    # Useful for setting sudo rules for system accounts created by package instalation
    sudoonly: false
    sudouser: true
    shell: /usr/bin/fish
    ssh_key_type: rsa
    ssh_keys:
      # You can inline the private keys ...
      # privkey: PRIVATEKEY
      # pubkey: PUBLICKEY
      # or you can provide path to key on Salt fileserver
      pubkey: salt://ssh/salmazz/salmazz.pub
    ssh_auth:
      - salmazz
    # Generates an authorized_keys file for the user
    # with the given keys
    ssh_auth_file:
      - salmazz

    # Using gitconfig without Git installed will result in an error
    # https://docs.saltstack.com/en/latest/ref/states/all/salt.states.git.html:
    # This state module now requires git 1.6.5 (released 10 October 2009) or newer.
    gitconfig:
      user.name: Salvatore Mazzarino
      user.email: dev@mazzarino.cz
      "url.https://.insteadOf": "git://"
