magomedov:
  group.present:
    - system: False

nagomedov_user:
  user.present:
    - name: magomedov
    - fullname: Magomed magomedov
    - createhome: True
    - shell: /bin/bash
    - home: /home/magomedov
    - gid_from_name: True
    - allow_gid_change: True
    - groups:
      {% if grains['os_family'] == 'Ubuntu' -%}
      - sudo
      {% else %}
      - wheel
      {% endif %}
    - password: $6$N5hWmaN6$clxxx
