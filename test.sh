#!/usr/bin/env bash
export AHT_RESULT_FILE=atomic_stderr
rm -rf venv
python -m pip install virtualenv
python -m virtualenv venv
source venv/bin/activate
python -m pip install -Ur requirements.txt
ansible-playbook -vi hosts --limit atomic tests/admin-unlock/main.yml
#ansible-playbook -vi hosts --limit atomic tests/docker/main.yml
#ansible-playbook -vi hosts --limit atomic tests/docker-build-httpd/main.yml
#ansible-playbook -vi hosts --limit atomic tests/docker-swarm/main.yml
#ansible-playbook -vi hosts --limit atomic tests/images_cve_scanner/main.yml
#ansible-playbook -vi hosts --limit atomic tests/improved-sanity-test/main.yml
#ansible-playbook -vi hosts --limit atomic tests/k8-cluster/main.yml
#ansible-playbook -vi hosts --limit atomic tests/openshift-ansible-test/main.yml
#ansible-playbook -vi hosts --limit atomic tests/pkg-layering/main.yml
#ansible-playbook -vi hosts --limit atomic tests/rpm-ostree/main.yml
#ansible-playbook -vi hosts --limit atomic tests/system-containers/main.yml
#ansible-playbook -vi hosts --limit atomic tests/unique-machine-id/main.yml
