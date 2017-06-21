.PHONY: build push

REPO=itsvit/ansible-aws-kubectl
TAG=v1.1

build:
	docker build --pull -t $(REPO):$(TAG) .

push:
	docker push $(REPO):$(TAG)
