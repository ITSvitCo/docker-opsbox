# Description

Docker image with installed CLI tools: `ansible`, `aws`, `kubectl`

# Basic usage

```
docker run --rm itsvit/ansible-aws-kubectl ansible --help
docker run --rm itsvit/ansible-aws-kubectl aws help
docker run --rm itsvit/ansible-aws-kubectl kubectl --help
```

# Advanced usage

```
docker run --rm -v ${HOME}/.aws:/root/.aws -v ${HOME}/.kube:/root/.kube -v ${PWD}:/srv itsvit/ansible-aws-kubectl kubectl get po --all-namespaces
docker run --rm -v ${HOME}/.aws:/root/.aws -v ${HOME}/.kube:/root/.kube -v ${PWD}:/srv itsvit/ansible-aws-kubectl aws ec2 describe-instances --region us-west-2
docker run --rm -v ${HOME}/.aws:/root/.aws -v ${HOME}/.kube:/root/.kube -v ${PWD}:/srv itsvit/ansible-aws-kubectl ansible-playbook playbooks/describe-kubernetes-cluster.yml
```
