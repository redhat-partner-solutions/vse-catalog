# ArgoCD patch required for ZTP deployments 

The following patch is required for ZTP worload clusters to be deployed from vse-carslab-hub repository

The current *overlays* available are for the following versions:
* [4.10](overlays/4.10)
* [4.11](overlays/4.11)
* [4.12](overlays/4.12)

There is also a default included if you want to not have this ztp argocd patch included.
* [default](overlays/default)

## Usage

As part of redhat-partner-solutions/vse-carslab-hub/bootstrap/overlays/default/kustomization.yaml:

```
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization
bases:
  - github.com/redhat-partner-solutions/vse-catalog/components/argocd/overlays/<version>?ref=main
