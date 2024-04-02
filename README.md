# helm-chart-samples-ftw

## Table of Contents

+ [Summary](#summary)
+ [Features](#features)

## Summary

Helm Chart samples required in combination with the [gitops-ftw Github repository](https://github.com/MGTheTrain/gitops-ftw) to showcase GitOps. ArgoCD applications or Flux Deployments will refer to these custom helm chart samples. GitOps will be demonstrated in that the defined state of the Helm charts synchronizes with the Kubernetes cluster via the **Sync Controller** referring to the deltas in the `main` branch.

**Remark:** It's generally not recommended to tightly bind backend service source code with Helm charts. Instead, it's common practice to have the Helm chart reference the built artifact (e.g., Docker image) of the backend service. This allows the backend service to evolve independently of the Helm chart, and simplifies the deployment process. This repository is solely for demonstrating GitOps.

## Features

- [x] Sample C# ASP .NET Core HelloWorld service 
- [x] CD wofklow for on demand deployments of an ACR (**Required for building and pushing internal service docker images**)
- [x] CI workflow for building and pushing the dockerized sample service to an ACR
- [x] Helm chart for the sample service required for GitOps