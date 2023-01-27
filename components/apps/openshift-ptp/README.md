# OpenShift Precision Time Protocol Operator

Installs the OpenShift PTP Operator.

Do not use the `base` directory directly, as you will need to patch the `channel` based on the version of the operator you want to use.

The current *overlays* available are for the following channels:
* [stable](overlays/stable)

## Usage

If you have cloned the `vse-catalog` repository, you can install the PTP operator based on the overlay of your choice (usually stable channel) by running from the root `vse-catalog` directory

```
oc apply -k components/apps/openshift-ptp/overlays/<channel>
```

Or, without cloning the repo:

```
oc apply -k https://github.com/redhat-partner-solutions/vse-catalog/components/apps/openshift-ptp/overlays/<channel>
```

As part of a different overlay in your own GitOps repo:

```
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization
bases:
  - github.com/redhat-partner-solutions/vse-catalog/components/apps/openshift-ptp/overlays/<channel>?ref=main
```