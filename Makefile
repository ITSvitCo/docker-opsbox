.PHONY: build push

REPO=itsvit/ansible-aws-kubectl
TAG=v1.1

build:
	docker build --pull -t $(REPO):$(TAG) .

push:
	docker tag $(REPO):$(TAG) $(REPO):latest
	docker push $(REPO):$(TAG)
	docker push $(REPO):latest
