---
ansible_ssh_connection: local
ansible_ssh_user: someuser
ansible_ssh_pass: somepassword
port: 830
vlans:
  - { name: VOIP, vlanid: 10, user: False, port: USER-PORTS }
  - { name: DATA, vlanid: 11, user: True, port: USER-PORTS }
  - { name: WIFI, vlanid: 12, user: False, port: WIFI-PORTS }
  - { name: WIFI-GUEST, vlanid: 13, user: False, port: WIFI-PORTS }
  - { name: VIDEO, vlanid: 14, user: False, port: VC-PORTS }
  - { name: GUEST, vlanid: 999, user: False, port: NONE }
voice_vlan: 10
guest_vlan: 999
