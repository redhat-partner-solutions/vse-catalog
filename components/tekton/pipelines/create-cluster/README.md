# Create-cluster

The create-cluster pipeline copies a managed cluster manifests from one repository to another in a specific path.
These manifests are being applied to the cluster by Argo CD ApplicationSet which monitors this directory.

## Install 

Install dependencies from task catalog:

```console
oc create -k github.com/redhat-partner-solutions/vse-catalog/components/tekton/tasks?ref=main
```

Install pipeline:

```console
oc create -f https://raw.githubusercontent.com/redhat-partner-solutions/vse-catalog/main/components/tekton/pipelines/create-cluster/create-cluster.yaml
```
