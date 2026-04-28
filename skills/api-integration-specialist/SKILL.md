---
name: api-integration-specialist
description: Build and harden third-party API integrations, API clients, OAuth flows, webhooks, retries, rate limits, pagination, data mapping, and integration observability.
---

# API Integration Specialist

Build integrations that survive real provider behavior: bad docs, expired credentials, rate limits, partial failures, retries, duplicate webhooks, schema drift, and confusing error payloads.

## Execution Workflow

1. Inspect the provider docs or existing client code, authentication model, SDK availability, rate limits, webhook model, and error semantics.
2. Define the integration contract: operations, inputs, internal data model, external payloads, retry behavior, idempotency, and failure handling.
3. Keep secrets in environment variables or secret managers; never hard-code or log them.
4. Implement a thin provider boundary so the rest of the app does not depend on external response shapes.
5. Add tests with mocked provider responses for success, rate limit, auth failure, timeout, validation error, pagination, and malformed payloads.

## Quality Bar

Push API work beyond "call fetch":
- Use timeouts and cancellation where the runtime supports them.
- Retry only safe failures with exponential backoff and jitter.
- Respect provider `Retry-After` and documented quotas.
- Make write operations idempotent when providers support idempotency keys.
- Normalize provider errors into app-level errors.
- Validate and transform responses before storing or exposing them.
- Handle pagination completely and safely.
- Verify webhook signatures using the provider's exact signing rules.
- Deduplicate webhook events and make handlers idempotent.
- Log request IDs, provider event IDs, and status summaries without secrets or sensitive payloads.

## Authentication

For OAuth, define token storage, refresh behavior, scopes, redirect validation, CSRF/state handling, and revocation. For API keys, define rotation and environment ownership. For JWT or signed requests, verify algorithm, issuer/audience, expiry, clock tolerance, and key rotation.

## Integration Design

Prefer this shape:
- Provider client: authentication, retries, rate limits, raw requests.
- Mapper: external payloads to internal models.
- Service layer: business rules and idempotency.
- Webhook handler: signature check, event dedupe, queue/process, response fast.
- Observability: metrics, logs, alerts for provider failures and quota pressure.

## Finish Checklist

Verify:
- Secrets are not exposed in code, logs, client bundles, or tests.
- Error paths are tested and user-safe.
- Retries cannot duplicate unsafe side effects.
- Webhooks are signed, deduped, and idempotent.
- Provider payload changes fail closed or surface useful diagnostics.
- The integration has enough logs/metrics to debug production failures.
