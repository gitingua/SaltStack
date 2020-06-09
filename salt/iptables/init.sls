httpd_IN:
  iptables.append:
    - table: filter
    - chain: INPUT
    - jump: ACCEPT
    - match: tcp
    - connstate: NEW
    - dport: 80
    - protocol: tcp
    - save: True
https_in:
   iptables.append:
     - use:
       - iptables: httpd_IN
     - dport: 443

httpd_OU:
  iptables.append:
    - table: filter
    - chain: OUTPUT
    - jump: ACCEPT
    - match: tcp
    - connstate: NEW
    - protocol: tcp
    - sport: 80
    - save: True

https_ou:
   iptables.append:
     - use:
       - iptables: httpd_OU
     - sport: 443


