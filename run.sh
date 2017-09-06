#!/usr/bin/env bash
pushd "/home/centos/dci-atomic-host-agent"
git fetch -a
git checkout master
git reset --hard origin/master
source ./openrc.sh
source ./dcirc.sh
ansible-playbook -i hosts dci-atomic-host-agent.yml -e topic='Fedora-Atomic-26'
popd
