git:
  pkg.installed:
    - version: {{ salt['pillar.get']('git:version', '2.35.1-1') }}
