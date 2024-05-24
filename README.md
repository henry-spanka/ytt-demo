# ytt-demo

The idea is to have common defined data values and then override specific keys. While ytt supports merging out of the box, this was not sufficient for me and I explored another direction.

As an example I want to render ArgoCD Application manifests. Each application has a name and a git revision (simplified). All environments have the same apps so I defined them in a defaults/apps.yaml file which will be applied on top of the schema.

Each environment has an individual values.yaml file. Here environment specific values can be set which are different from the default. What I want to do is override each app's revision from default to dev on development environment.

This works fine but as soon as you append to a nested list this breaks and I am not sure why.
