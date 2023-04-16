# get-ocp-release

A shell script and Kubernetes job for getting the latest Openshift release from [quay](https://quay.io/repository/openshift-release-dev/ocp-release?tab=tags)

## Install 

Apply job:

Change the URL for the curl command to use your cluster's.

```console
oc create -f components/tekton/triggers/get-ocp-release/get_ocp_release_job.yaml
```
