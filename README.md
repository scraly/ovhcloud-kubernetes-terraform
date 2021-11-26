# ovhcloud-kubernetes-terraform

Welcome in this repository.

Through this procedure, you can [create multiple OVHcloud Managed Kubernetes, through Terraform](https://docs.ovh.com/gb/en/kubernetes/creating-a-cluster-through-terraform/).

We will create, in parallel, several Kubernetes clusters in OVH, with a functional deployment and a service.

# Prerequisites

Generate [OVH API credentials](https://api.ovh.com/createToken/?GET=/*&POST=/*&PUT=/*&DELETE=/*) and then export in environment variables in your machine like this:

```
$ export OVH_ENDPOINT="ovh-eu"
export OVH_APPLICATION_KEY="xxx"
export OVH_APPLICATION_SECRET="xxxxx"
export OVH_CONSUMER_KEY="xxxxx"
```

Or you can directly put them in `provider.tf` in ovh provider definition:

```
provider "ovh" {
  version            = "~> 0.16"
  endpoint           = "ovh-eu"
  application_key    = "xxx"
  application_secret = "xxx"
  consumer_key       = "xxx"
}
```

And in `variables.tf` set your service_name parameter (Public Cloud project ID):

```
variable "service_name" {
  default = "xxxxx"
}
```

# How To

Create the Kubernetes clusters and for each apply a deployment a service and when the load balancer is created, curl the app:

```
./scripts/script.sh
```

Output are writted in `logs` file.

# Clean

You can remove generated files and OVHcloud resources:

```
./scripts/clean.sh
```

