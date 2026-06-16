# APIDot Agent Skills

Agent-facing skills and documentation for using APIDot from ClawHub and OpenClaw.

APIDot gives developers one API key for image generation, video generation, chat, music, and 3D generation workflows. This repository publishes lightweight agent instructions that help AI agents discover APIDot, choose the right APIDot docs, and follow the standard submit, polling, and webhook flow safely.

## Available Skills

| Skill | Purpose |
| --- | --- |
| `apidot-ai-api` | Use APIDot as one AI API for image, video, chat, music, and 3D generation workflows. |
| `apidot-video-generation-api` | Use APIDot for video generation API workflows, including text-to-video, image-to-video, polling, and webhooks. |
| `apidot-image-generation-api` | Use APIDot for image generation and image editing API workflows, including text-to-image, image-to-image, polling, and webhooks. |
| `apidot-async-workflow` | Use APIDot async task workflow guidance for task submission, task status, polling, callback URLs, and webhooks. |

## Install

ClawHub listings:

https://clawhub.ai/jiehao71727/apidot-ai-api

https://clawhub.ai/jiehao71727/apidot-video-generation-api

https://clawhub.ai/jiehao71727/apidot-image-generation-api

https://clawhub.ai/jiehao71727/apidot-async-workflow

```bash
clawhub install apidot-ai-api
clawhub install apidot-video-generation-api
clawhub install apidot-image-generation-api
clawhub install apidot-async-workflow
```

If you do not have the ClawHub CLI installed, follow the ClawHub install documentation first.

These skills are intentionally lightweight. They do not include scripts, hidden automation, or bundled API clients. For runnable API examples, use the official examples repository.

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
  apidot-video-generation-api/
    SKILL.md
  apidot-image-generation-api/
    SKILL.md
  apidot-async-workflow/
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
