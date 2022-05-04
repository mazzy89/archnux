rustup:
  pkg.installed:
    - version: {{ salt['pillar.get']('rustup:version', '1.24.3-2') }}

rustup_toolchain:
  cmd.run:
    - name: rustup default {{ salt['pillar.get']('rustup:toolchain', 'stable') }}
    - require:
        - pkg: rustup
