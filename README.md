# Description

Docker image with installed CLI tools: `ansible`, `aws`, `kubectl`

# Version

* Ansible `2.4.1.0`
* AWSCLI  `1.11.185`
* Kubectl `v1.8.5`
* Kube-AWS `v0.9.8`

# Basic usage

```
docker run --rm itsvit/opsbox ansible --help
docker run --rm itsvit/opsbox aws help
docker run --rm itsvit/opsbox kubectl --help
```

# Advanced usage

```
docker run -ti -v ${HOME}/.opsbox -v ${PWD}:/opsbox opsbox kubectl get po --all-namespaces
docker run -ti -v ${HOME}/.opsbox -v ${PWD}:/opsbox opsbox aws ec2 describe-instances --region us-west-2
docker run -ti -v ${HOME}/.opsbox -v ${PWD}:/opsbox opsbox ansible-playbook playbooks/describe-kubernetes-cluster.yml
```
