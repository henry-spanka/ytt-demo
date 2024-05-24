#!/bin/sh

ytt -f schema.yaml -f defaults -f environments/development -f manifests

# ytt -f schema.yaml -f defaults -f environments/production -f manifests
