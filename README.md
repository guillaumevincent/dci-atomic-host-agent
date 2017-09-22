# dci-atomic-host-agent ( :warning: WIP)

## requirements

 * centos 7
 
## Create and edit DCI env file

    mv dcirc.sh.example dcirc.sh
    vim ./dcirc.sh

## Replace hooks files

Replace `hooks/clean.yml`, `hooks/install.yml` and `hooks/test.yml` by your ansible scripts.
Existing files are here for documentation only.

## Workflow

At some point during your automation, you need to provision a VM with `{{ atomic_image_path }}`. 
`atomic_image_path` is the latest `qcow2` image which pass tests on Red Hat CI (i.e. `/tmp/rhel-atomic-cloud-7.4.1-5.qcow2`).

After the installation you must set 4 variables with ansible `set_fact` command:

 * `SSH_USER`: ssh sudoer
 * `SSH_PRIVATE_KEY_FILE`: ssh private key path for `SSH_USER`
 * `SSH_HOST`: ssh host or ip of Atomic Host virtual machine
 * `SSH_PORT`: ssh port of Atomic Host virtual machine
 
Those variables are used to run official tests on your environment.
We send those results to [https://www.distributed-ci.io](https://www.distributed-ci.io)