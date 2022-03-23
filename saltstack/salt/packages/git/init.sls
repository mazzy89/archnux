git:
  pkg.installed
    - version: {{ salt['pillar.get']('packages.git:git:version', '2.35.1-1') }}
