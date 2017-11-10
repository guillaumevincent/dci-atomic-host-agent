# dci-rhel-agent ( :warning: WIP)

## requirements

 * centos 7
 * DCI RC file (`remotecirc.sh`)
 
## Replace hooks files

Replace `hooks/clean.yml`, `hooks/install.yml` and `hooks/test.yml` by your ansible scripts.
Existing files are here for documentation only.

## Workflow

At some point during your automation, you need to provision a VM with `{{ rhel_image_path }}`. 
`rhel_image_path` is the latest `qcow2` image which pass tests on Red Hat CI (i.e. `/tmp/rhel-guest-image-7.5-7.x86_64.qcow2`).

After the installation you must set 4 variables with ansible `set_fact` command:

 * `SSH_USER`: ssh sudoer
 * `SSH_HOST`: ssh host or ip of RHEL virtual machine
 * `SSH_PRIVATE_KEY_FILE`: ssh private key path for `SSH_USER`
 * `SSH_PORT`: ssh port of RHEL virtual machine (default `22`)
 
Those variables are used to run official tests on your environment.
We send those results to [https://www.distributed-ci.io](https://www.distributed-ci.io)