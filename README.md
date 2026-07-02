# OpenCode Skills & Agents

A collection of custom agents and skills for [OpenCode](https://opencode.ai/) - the open source AI coding agent.

## Structure

```
opencode-skills/
├── agents/     # 129 OpenCode agent configurations
└── skills/     # 12 OpenCode skills
```

## Agents

Custom AI agents configured for specific development tasks. Each agent is a YAML file with:
- `description` - Agent purpose
- `mode` - "subagent" or "primary"
- `model` - Default model (claude-opus-4-6)
- `prompt` - System prompt
- `permission` - Allowed tools

Examples:
- `frontend-developer` - UI engineering with React, Vue, Angular
- `backend-developer` - Server-side development, APIs, microservices
- `code-reviewer` - Security, quality, best practices
- `debugger` - Issue diagnosis, root cause analysis
- `devops-engineer` - CI/CD, infrastructure, Kubernetes
- ...and 123 more

## Skills

Reusable skill modules for OpenCode:
- `senior-frontend` - Production frontend development
- `senior-backend` - Backend systems & APIs
- `senior-devops` - Infrastructure & deployments
- `senior-security` - Security engineering
- `frontend-design` - UI design & polish
- `seo-optimizer` - Search optimization
- `api-integration-specialist` - Third-party API integrations
- `ollama-local-models` - Auto-sync Ollama models into opencode config with vision support
- `playwright-cleanup` - Remove Playwright cache, browser binaries, screenshots, and temp data

## Usage

### Agents

Agents are automatically loaded from the `agents/` directory when placed in OpenCode's config directory.

### Skills

Skills are loaded on-demand. Use them by name in conversations:
```
/senior-frontend
/git-commit-helper
/seo-optimizer
```

## License

MIT
