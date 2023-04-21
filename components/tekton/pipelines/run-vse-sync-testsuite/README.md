# Build-Image-from-git-repo

The `run-testsuite-from-image` base pipeline runs a specific testsuite from
a base image containing the test suites.

## Install 

Install dependencies from task catalog:

```console
oc create -k github.com/redhat-partner-solutions/vse-catalog/components/tekton/tasks?ref=main
```

Install pipeline:

```console
oc create -f https://raw.githubusercontent.com/redhat-partner-solutions/vse-catalog/main/components/tekton/pipelines/run-testsuite-from-image/run-testsuite-from-image.yaml
```
