fish:
  pkg.installed:
    - version: {{ salt['pillar.get']('fish:version', '3.3.1-1') }}
