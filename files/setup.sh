#!/bib/bash

if [ "$(hostname)" == "control" ]; then
    mkdir -p ~/.ssh
    cp /tmp/files/ansiblelab ~/.ssh/id_dsa
    cp /tmp/files/inventory ~/inventory
    cp /tmp/files/ansible.cfg ~/ansible.cfg 
    echo "w00t!"
    sleep infinity
      else
    mkdir -p ~/.ssh
    cp /tmp/files/ansiblelab.pub ~/.ssh/authorized_keys
    chmod 600 ~/.ssh/authorized_keys
    echo "node deployed"
    /usr/sbin/sshd -D 
fi
