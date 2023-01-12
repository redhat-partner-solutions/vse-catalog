# Tekton Catalog Components
Here lives the Tekton catalog of shared tasks, pipelines, and pipelineRuns to be reused
by test suites executions:

* [Tekton Tasks](./tasks)
* [Tekton Pipelines](./pipelines)
* [Tekton PipelineRuns](./pipelineruns)

## Usage

If you have cloned the `vse-catalog` repository, you can install the vse Tekton catalog to execute to build and run vse test suites by running from the root `vse-catalog` directory:

```
oc apply -k components/tekton
```

Or, without cloning the repo:

```
oc apply -k
https://github.com/redhat-partner-solutions/vse-catalog/components/tekton
```

Reference the catalog (tekton Tasks and tekton Pipelines) without cloning the repo as  part of your own GitOps repo:

```
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization

namespace: vse-cicd-catalog

resources:
  - github.com/redhat-partner-solutions/vse-catalog/components/tekton?ref=main
```
