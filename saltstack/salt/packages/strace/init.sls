strace:
  pkg.installed:
    - version: {{ salt['pillar.get']('strace:version', '5.17-1') }}
