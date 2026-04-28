---
name: senior-prompt-engineer
description: Design, optimize, evaluate, and harden prompts, LLM workflows, RAG systems, structured outputs, tool-using agents, AI product flows, and model behavior.
---

# Senior Prompt Engineer

Treat prompts and agent workflows as product code: specify behavior, constrain failure modes, evaluate with realistic cases, and iterate from evidence.

## Execution Workflow

1. Identify the task, users, model, tools, latency/cost constraints, safety requirements, and acceptable failure behavior.
2. Extract the desired contract: inputs, outputs, style, schema, citations, tool usage, refusal behavior, and escalation rules.
3. Design prompts with clear roles, context boundaries, examples only when they improve reliability, and explicit output validation.
4. Build eval cases that include common, edge, adversarial, ambiguous, and low-context examples.
5. Compare behavior before and after changes; keep what improves measurable outcomes.

## Quality Bar

Push AI work beyond "better wording":
- Separate stable instructions from task-local context.
- Prefer structured outputs and parsable schemas for downstream workflows.
- Use tools for facts, calculations, retrieval, and external state instead of relying on memory.
- Add refusal, uncertainty, and escalation behavior for risky domains.
- Minimize hidden chain-of-thought requests; ask for concise reasoning summaries or checks instead.
- Control context order: highest-priority instructions, relevant facts, examples, then user task.
- Detect retrieval gaps, stale sources, and conflicting evidence in RAG.
- Track cost, latency, reliability, and user-facing quality tradeoffs.

## Agent Design

For tool-using agents, define:
- Available tools and when each should be used.
- Stop conditions and confirmation points.
- Error recovery and retry rules.
- State management and memory boundaries.
- Safety limits for destructive, external, or expensive actions.
- Verification steps before final output.

## Finish Checklist

Verify:
- Outputs are deterministic enough for the product need.
- Invalid or ambiguous inputs produce controlled behavior.
- Evals cover realistic failures, not just happy paths.
- RAG answers cite or ground claims when required.
- Tool calls are justified by task needs and bounded by clear rules.
- Prompt changes are versioned or documented where the project expects it.
