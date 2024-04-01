# helm-chart-samples-ftw

## Table of Contents

+ [Summary](#summary)
+ [Features](#features)
+ [Getting started](#getting-started)

## Summary

Helm Chart samples required in combination with the [gitops-ftw Github repository](https://github.com/MGTheTrain/gitops-ftw) to showcase GitOps. ArgoCD applications or Flux HelmReleases will refer to these custom helm chart samples. GitOps will be demonstrated in that the defined state of the Helm charts synchronizes with the Kubernetes cluster via the **Sync Controller** after `feature` branches get merged into the `main` branch.

**Remark:** It's generally not recommended to tightly bind backend service source code with Helm charts. Instead, it's common practice to have the Helm chart reference the built artifact (e.g., Docker image) of the backend service. This allows the backend service to evolve independently of the Helm chart, and simplifies the deployment process. This repository is solely for demonstrating GitOps.

## Features

- [x] Sample C# ASP .NET Core HelloWorld service 
- [x] CD wofklow for on demand deployments of an ACR (**Required for building and pushing internal service docker images**)
- [x] CI workflow for building and pushing the dockerized sample service to an ACR
- [x] Helm chart for the sample service required for GitOps

## Getting started

### Preconditions

- Requires a k8s cluster with installed GitOps tool (e.g. ArgoCD or FluxCD)
- Requires a Docker Container registry (e.g. ACR) 

### Showcase GitOps

0. Create a `feature/xyz` branch
1. Modify the Docker image tag to reference alternative service release versions in the [values.yml](./helm/sample-service/values.yaml) file, e.g. 

```sh
# tag: "0.1.0" # Ensure docker image with tag 0.1.0 exists in the ACR 
tag: "0.2.0" # Ensure docker image with tag 0.2.0 exists in the ACR
```

2. Create a PR in order to merge from `feature/xyz` branch into the `main` branch
3. Observe if the changes of the Helm charts synchronize with the Kubernetes cluster. Utilize for ArgoCD the Web UI