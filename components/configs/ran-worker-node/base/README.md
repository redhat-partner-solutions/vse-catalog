# RAN Worker Nodes
RAN worker nodes share some additional requirements that OCP default MachineConfig settings do not satisfy. 
The common ones are located into this repo associated to a MachineConfigPool. In this way they can be consumed from any RAN worker node in any cluster located in any site. List of settings specific for RAN worker nodes follow:

* Disable NTP Service Chronyd



