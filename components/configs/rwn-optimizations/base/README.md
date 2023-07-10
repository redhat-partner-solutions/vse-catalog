# Remote Worker Nodes Customizations
This adds necessary customizations to compact-cluster to move ingress to the control plane, and put enhancements into remove unnecessary pods from workers. Noticed when upgrading the cluster from 4.10.18 to 4.10.30. In particular:

* Moving Ingress to control plane (applicable for compact clusters).
* Set the number of maximum pods per node (e.g., 500).
* Writes IP address configuration so that kubelet and crio services select a valid node IP address.
