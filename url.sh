#!/bin/bash

set -e 

export NODE_PORT=$(kubectl get --namespace confluence -o jsonpath="{.spec.ports[0].nodePort}" services confluence-confluence-server)
export NODE_IP=$(kubectl get nodes --namespace confluence -o jsonpath="{.items[0].status.addresses[0].address}")
echo http://$NODE_IP:$NODE_PORT