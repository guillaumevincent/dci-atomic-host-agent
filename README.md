# dci-atomic-host-agent

## requirements

 * python3
 * OpenStack Platform
 * OpenStack RC file v3
 * Available ssh key in your OpenStack Platform
 
## create virtualenv
    
    ./create_venv.sh
    
## Download and source your OpenStack RC file

    source ./openrc.sh

## Edit hosts file and replace

Edit hosts file and replace `ansible_ssh_host=` variables.
Use available floating IPs from your OpenStack Platform.

## Create jumbox

    source venv/bin/activate
    ansible-playbook -i hosts -e OS_KEYPAIR=t460s jumpbox.yml

## ...

    su dci
    cd /home/dci/dci-atomic-host-agent
    source ./openrc.sh
    ansible-playbook -i hosts atomic.yml

