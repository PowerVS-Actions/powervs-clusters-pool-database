#!/usr/bin/env bash

: '
    Copyright (C) 2021 IBM Corporation
    Rafael Sene <rpsene@br.ibm.com> - Initial implementation.
'

export DOCKER_CLI_EXPERIMENTAL=enabled

docker manifest create quay.io/powercloud/powervs-actions:powervs-ocp-pool-database \
quay.io/powercloud/powervs-actions:powervs-ocp-pool-database-x86_64 quay.io/powercloud/powervs-actions:powervs-ocp-pool-database-ppc64le

docker login quay.io -u "$USER_QUAY" -p "$PWD_QUAY"
docker manifest push quay.io/powercloud/powervs-actions:powervs-ocp-pool-database
