# Build-Image-from-git-repo

The build-image pipeline builds source code from a Git repository into
a container image and pushes it to a registry. The source code repo MUST 
include a filename with a CONTAINERFILE repo.

## Install 

Install dependencies from task catalog:

```console
oc create -k github.com/redhat-partner-solutions/vse-catalog/components/tekton/tasks?ref=main
```

Install pipeline:

```console
oc create -f https://raw.githubusercontent.com/redhat-partner-solutions/vse-catalog/main/components/tekton/pipelines/build-image-from-git-repo/build-image-from-git-repo.yaml
```
