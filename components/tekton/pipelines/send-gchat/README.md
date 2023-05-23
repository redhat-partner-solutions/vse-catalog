# Send-gchat

The send-gchat pipeline sends a message to a google chat space.

## Install 

Install dependencies from task catalog:

```console
oc create -k github.com/redhat-partner-solutions/vse-catalog/components/tekton/tasks?ref=main
```

Install pipeline:

```console
oc create -f https://raw.githubusercontent.com/redhat-partner-solutions/vse-catalog/main/components/tekton/pipelines/send-gchat/send-gchat.yaml
```
