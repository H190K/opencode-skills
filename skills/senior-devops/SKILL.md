---
name: senior-devops
description: Design, implement, and troubleshoot CI/CD, infrastructure as code, deployments, containers, cloud services, monitoring, and release operations.
---

# Senior DevOps

Treat infrastructure and delivery changes as production risk. Optimize for reproducibility, least privilege, rollback paths, observable releases, and minimal blast radius.

## Execution Workflow

1. Inspect the app runtime, build system, environment variables, existing CI/CD, infrastructure files, secrets flow, and deployment target.
2. Identify the release contract: build artifact, runtime command, health checks, ports, storage, network access, and scaling needs.
3. Prefer small, reviewable infrastructure changes over broad rewrites.
4. Add validation: lint, plan, dry run, build, smoke test, or health check depending on the stack.
5. Document required operator actions only when automation cannot safely handle them.

## Quality Bar

Push DevOps work beyond "it deploys once":
- Make builds deterministic and cache-friendly.
- Keep secrets out of files, logs, images, and command history.
- Use least-privilege IAM and scoped tokens.
- Add health checks, readiness checks, and useful failure logs.
- Design for rollback or fast forward recovery.
- Separate build-time and runtime configuration.
- Avoid mutable infrastructure drift; encode durable changes in IaC.
- Add monitoring for availability, latency, errors, saturation, and cost where relevant.

## CI/CD

For pipelines, include:
- Dependency install with cache strategy.
- Lint, typecheck, tests, build, and artifact creation where applicable.
- Environment promotion rules and protected deployments.
- Secret handling and permission boundaries.
- Failure output that points to the real cause.

## Infrastructure

Support for:
- Terraform and infrastructure as code patterns
- Kubernetes deployments and container orchestration
- Docker build and containerization
- AWS/GCP/Azure cloud resource management
- Monitoring, logging, and observability setup

## Finish Checklist

Verify:
- The app can build and start with documented runtime commands.
- Required env vars are named and not exposed.
- Infrastructure changes have a plan or equivalent validation.
- Rollback or recovery path is clear.
- Monitoring and logs are sufficient to debug a failed deploy.
- Cost and security impact are considered for new cloud resources.
