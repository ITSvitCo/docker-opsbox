# Description

Docker image with installed CLI tools: `ansible`, `aws`, `kubectl`

# Version

Ansible

```
ansible 2.3.1.0
```

AWSCLI

```
aws-cli/1.10.66 Python/2.7.12 Linux/4.4.0-81-generic botocore/1.4.56
```

Kubectl
```
Client Version: version.Info{Major:"1", Minor:"6", GitVersion:"v1.6.6", GitCommit:"7fa1c1756d8bc963f1a389f4a6937dc71f08ada2", GitTreeState:"clean", BuildDate:"2017-06-16T18:34:20Z", GoVersion:"go1.7.6", Compiler:"gc", Platform:"linux/amd64"}
```

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

For ansible colorfull output and interactive input
```
docker run --rm -ti -v ${HOME}/.aws:/root/.aws -v ${HOME}/.kube:/root/.kube -v ${PWD}:/srv itsvit/ansible-aws-kubectl kubectl get po --all-namespaces
docker run --rm -ti -v ${HOME}/.aws:/root/.aws -v ${HOME}/.kube:/root/.kube -v ${PWD}:/srv itsvit/ansible-aws-kubectl aws ec2 describe-instances --region us-west-2
docker run --rm -ti -v ${HOME}/.aws:/root/.aws -v ${HOME}/.kube:/root/.kube -v ${PWD}:/srv itsvit/ansible-aws-kubectl ansible-playbook playbooks/describe-kubernetes-cluster.yml
```
