# dci-atomic-host-agent

## requirements

 * python3
 * OpenStack Platform
 * OpenStack RC file v3
 * Available ssh key in your OpenStack Platform (i.e. OS_KEYPAIR)
 
## create virtualenv
    
    python3 -m venv venv
    source venv/bin/activate
    python -m pip install -r requirements.txt
    
## Download and source your OpenStack RC file

    source ./openrc.sh

## Create and edit DCI env file

    mv dcirc.sh.example dcirc.sh
    vim ./dcirc.sh

## Edit hosts inventory file

Edit hosts file and replace `ansible_ssh_host=` variables.
Use available floating IPs from your OpenStack Platform.

## Create jumbox

    source venv/bin/activate
    ansible-playbook -i hosts -e OS_KEYPAIR=t460s jumpbox.yml

## Jumpbox

The jumpbox is configured to run every day:

 * clean environment
 * download and create VM with the last qcow2 image on OSP
 * run tests and send them to DCI
