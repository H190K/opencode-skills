---
name: git-commit-helper
description: Analyze git status, staged diffs, and recent history to write precise conventional commit messages or review whether staged changes form a clean commit.
---

# Git Commit Helper

Write commit messages that explain the logical change, not a file list. Prefer concise conventional commits unless the repository clearly uses another style.

## Workflow

1. Inspect `git status --short` and `git diff --staged --stat`.
2. Inspect `git diff --staged` before writing a final message.
3. If nothing is staged, inspect unstaged changes only if the user asked for help staging or drafting.
4. Check recent commit style with `git log -5 --oneline` when useful.
5. Identify whether the staged set is one logical change or should be split.

## Message Standard

Use:

```text
type(scope): imperative summary

Body when it adds useful why/impact context.

Footer for breaking changes or issue references.
```

Common types: `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`, `perf`, `build`, `ci`, `revert`.

Push quality by:
- Keeping the summary specific and under about 72 characters unless the repo uses another limit.
- Using imperative mood: "add", "fix", "remove", "harden".
- Explaining why in the body when the diff is not self-evident.
- Calling out migrations, behavior changes, compatibility changes, and risk.
- Marking breaking changes with `!` and a `BREAKING CHANGE:` footer.

## Review Staged Changes

If the staged diff mixes unrelated concerns, say so and suggest a split by file or hunk. Do not invent issue numbers or scopes. Do not include implementation trivia unless it changes behavior or maintainability.

## Finish Checklist

Verify:
- The message matches exactly what is staged.
- The type and scope reflect the primary change.
- Risk, migrations, or breaking changes are visible.
- The body explains impact rather than repeating the summary.
