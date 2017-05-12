#!/bin/bash

for pid in $(subscription-manager list --available | grep Pool | cut -d':' -f2 | tr -d ' \t'); do subscription-manager attach --pool=$pid; done

subscription-manager repos --list | grep "Repo ID" | sort

subscription-manager repos --enable=rhel-7-server-rpms --enable=rhel-7-server-openstack-10-rpms
yum -y install ansible

subscription-manager remove --all
subscription-manager unregister
subscription-manager clean