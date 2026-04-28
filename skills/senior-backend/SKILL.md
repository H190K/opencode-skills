---
name: senior-backend
description: Design, implement, optimize, and review production backend systems using APIs, databases, authentication, authorization, queues, caching, observability, and service architecture.
---

# Senior Backend

Build backend changes as production systems, not isolated snippets. Preserve existing service boundaries, data contracts, and operational behavior while improving correctness, security, and maintainability.

## Execution Workflow

1. Inspect routing, service layers, data access, auth, validation, error handling, tests, and deployment assumptions.
2. Identify the contract: inputs, outputs, status codes, schemas, side effects, idempotency, and backward compatibility.
3. Implement through the existing architecture unless there is a clear reason to change it.
4. Add or update tests at the level that protects the behavior: unit, integration, contract, migration, or end-to-end.
5. Run relevant checks and report anything that cannot be run.

## Quality Bar

Push backend work beyond "endpoint exists":
- Validate inputs at trust boundaries and return consistent errors.
- Keep authorization checks close to protected resources.
- Make writes idempotent where duplicate requests are plausible.
- Use transactions for multi-step data changes that must remain consistent.
- Avoid N+1 queries and unbounded scans.
- Add pagination, filtering limits, and sane defaults for list endpoints.
- Treat migrations as deployable artifacts with rollback or forward-fix strategy.
- Log useful operational context without secrets or personal data leakage.
- Avoid swallowing errors; preserve causality for debugging.

## API Design

For REST and GraphQL work, define:
- Resource or domain model and ownership.
- Request and response schemas.
- Error taxonomy and status semantics.
- Versioning and compatibility constraints.
- Rate limits, retries, and idempotency expectations.
- Security model for each operation.

## Data And Performance

Before changing data paths, inspect indexes, query shape, cardinality, locking behavior, and migration cost. Prefer measuring with query plans or representative tests when feasible.

## Finish Checklist

Verify:
- Tests cover success, failure, authorization, and edge cases.
- Schema changes and generated clients are updated when required.
- Errors are user-safe but logs remain useful.
- New queries are bounded and indexed appropriately.
- Secrets are not hard-coded or logged.
- The implementation matches the existing deployment and runtime constraints.
