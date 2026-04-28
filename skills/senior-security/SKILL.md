---
name: senior-security
description: Perform application security engineering, threat modeling, secure code review, penetration testing support, cryptography review, compliance checks, and security architecture design.
---

# Senior Security

Work from concrete assets and threat models, not generic checklists. Identify exploitable risk, prioritize by impact and likelihood, and propose fixes that fit the system.

## Execution Workflow

1. Define scope, assets, trust boundaries, actors, entry points, and data sensitivity.
2. Inspect code paths for authentication, authorization, validation, secrets, file handling, network calls, storage, and logging.
3. Rank findings by exploitability, impact, prerequisites, and blast radius.
4. Provide fixes with implementation detail and verification steps.
5. Avoid destructive testing or live exploitation unless the user explicitly authorizes it.

## Quality Bar

Push security work beyond "best practices":
- Prove each finding with code references, request flows, or reproducible reasoning.
- Distinguish theoretical weaknesses from exploitable vulnerabilities.
- Check authorization at object and action level, not only route level.
- Treat SSRF, injection, deserialization, path traversal, IDOR, XSS, CSRF, auth bypass, insecure direct file access, and secrets leakage as high-signal review targets.
- Verify crypto uses standard libraries, modern algorithms, random nonces/IVs, authenticated encryption, and safe key management.
- Include regression tests or detection rules when practical.

## Reporting Standard

For reviews, lead with findings:
- Severity and title.
- Affected file, endpoint, or component.
- Exploit path or failure mode.
- Impact.
- Fix.
- Verification.

If there are no findings, say that clearly and list residual risk or test gaps.

## Finish Checklist

Verify:
- No secrets are committed, logged, or exposed in client bundles.
- Authn/authz paths cover object-level access.
- Inputs are validated and encoded at the correct boundary.
- Sensitive data is encrypted or redacted where required.
- Security-sensitive changes have tests or manual verification steps.
