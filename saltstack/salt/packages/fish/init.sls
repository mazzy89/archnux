fish:
  pkg.installed
    - version: {{ salt['pillar.get']('packages.fish:fish:version', '3.3.1-1') }}
