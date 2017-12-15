#!/bin/bash

mkdir /mnt/opsbox/.aws /mnt/opsbox/.kube

exec "$@"
