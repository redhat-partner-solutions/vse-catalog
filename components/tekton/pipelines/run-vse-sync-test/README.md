# Run-vse-sync-testsuite

The `run-vse-sync-testsuite` base pipeline runs a the vse sync testsuite from
a released container image containing the test suites.

## Install 

Install dependencies from task catalog:

```console
oc create -k github.com/redhat-partner-solutions/vse-catalog/components/tekton/tasks?ref=main
```

Install pipeline:

```console
oc create -k https://raw.githubusercontent.com/redhat-partner-solutions/vse-catalog/main/components/tekton/pipelines/run-vse-sync-test/
```
