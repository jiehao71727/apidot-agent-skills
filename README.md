# APIDot Agent Skills

Agent-facing skills and documentation for using APIDot from ClawHub and OpenClaw.

APIDot gives developers one API key for image generation, video generation, chat, music, and 3D generation workflows. This repository publishes lightweight agent instructions that help AI agents discover APIDot, choose the right APIDot docs, and follow the standard submit, polling, and webhook flow safely.

## Available Skills

| Skill | Purpose |
| --- | --- |
| `apidot-ai-api` | Use APIDot as one AI API for image, video, chat, music, and 3D generation workflows. |

## Install

After the first ClawHub release is live:

```bash
clawhub install apidot-ai-api
```

The skill is designed as documentation-only in v1. It does not include scripts, hidden automation, or bundled API clients. For runnable API examples, use the official examples repository.

## Official APIDot Links

- Website: https://apidot.ai
- Docs: https://apidot.ai/docs
- Models: https://apidot.ai/models
- API key dashboard: https://apidot.ai/dashboard/api-key
- Examples: https://github.com/APIDotAI/apidot-examples
- GitHub organization: https://github.com/APIDotAI
- Support: support@apidot.ai

## Repository Layout

```text
skills/
  apidot-ai-api/
    SKILL.md
docs/
  publishing.md
  maintenance.md
CHANGELOG.md
LICENSE
README.md
```

## Maintenance Policy

Keep this repository focused on agent and ClawHub distribution. Do not add APIDot backend code, website code, or broad social content here.

Do not commit real API keys, tokens, internal URLs, customer data, pricing claims, discount claims, uptime claims, or competitor comparisons. Link to APIDot docs and model pages for details that may change.
