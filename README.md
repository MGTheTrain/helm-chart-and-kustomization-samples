# helm-chart-samples-ftw

## Table of Contents

+ [Summary](#summary)
+ [Features](#features)
+ [Getting started](#getting-started)

## Summary

Helm Chart samples required in combination with the [gitops-ftw Github repository](https://github.com/MGTheTrain/gitops-ftw) to showcase GitOps. ArgoCD applications or Flux HelmReleases will refer to these custom helm chart samples. GitOps will be demonstrated in that the defined state of the Helm charts synchronizes with the Kubernetes cluster via the **Sync Controller** after `feature` branches get merged into the `main` branch 

## Features

- [x] Sample C# ASP .NET Core HelloWorld service 
- [ ] CI workflow for building and pushing the dockerized sample service to an ACR
- [ ] Helm chart for the sample service required for GitOps

## Getting started

### Preconditions

- Requires a k8s cluster
- Requires a Docker Container registry (e.g. ACR) 
- Add the git submodule with `git submodule update --init`

### Showcase GitOps

0. Create a `feature/xyz` branch
1. Update the `values.yml` file, e.g. 

```sh
TBD
```

2. Create a PR in order to merge from `feature/xyz` branch into the `main` branch
3. Observe if the changes of the Helm charts synchronize with the Kubernetes cluster. Utilize for ArgoCD the Web UI