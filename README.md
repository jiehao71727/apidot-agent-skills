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
| `apidot-3d-generation-api` | Use APIDot for 3D generation API workflows, including text-to-3D, image-to-3D, polling, and webhooks. |
| `apidot-music-generation-api` | Use APIDot for music generation API workflows, including text-to-music, song generation, polling, and webhooks. |
| `apidot-veo-3-1-api` | Use APIDot for Veo 3.1 API workflows, including text-to-video, image-to-video, polling, and webhooks. |
| `apidot-seedance-2-api` | Use APIDot for Seedance 2 API workflows, including text-to-video, image-to-video, native audio, polling, and webhooks. |
| `apidot-gpt-image-2-api` | Use APIDot for GPT Image 2 API workflows, including image generation, image editing, polling, and webhooks. |
| `apidot-nano-banana-pro-api` | Use APIDot for Nano Banana Pro API workflows, including image generation, image editing, polling, and webhooks. |
| `apidot-seedream-4-5-api` | Use APIDot for Seedream 4.5 API workflows, including image generation, image editing, polling, and webhooks. |

## Install

ClawHub listings:

https://clawhub.ai/jiehao71727/apidot-ai-api

https://clawhub.ai/jiehao71727/apidot-video-generation-api

https://clawhub.ai/jiehao71727/apidot-image-generation-api

https://clawhub.ai/jiehao71727/apidot-async-workflow

https://clawhub.ai/jiehao71727/apidot-3d-generation-api

https://clawhub.ai/jiehao71727/apidot-music-generation-api

https://clawhub.ai/jiehao71727/apidot-veo-3-1-api

https://clawhub.ai/jiehao71727/apidot-seedance-2-api

https://clawhub.ai/jiehao71727/apidot-gpt-image-2-api

https://clawhub.ai/jiehao71727/apidot-nano-banana-pro-api

https://clawhub.ai/jiehao71727/apidot-seedream-4-5-api

```text
clawhub install apidot-ai-api
clawhub install apidot-video-generation-api
clawhub install apidot-image-generation-api
clawhub install apidot-async-workflow
clawhub install apidot-3d-generation-api
clawhub install apidot-music-generation-api
clawhub install apidot-veo-3-1-api
clawhub install apidot-seedance-2-api
clawhub install apidot-gpt-image-2-api
clawhub install apidot-nano-banana-pro-api
clawhub install apidot-seedream-4-5-api
```

If you do not have the ClawHub CLI installed, follow the ClawHub install documentation first.

These skills are intentionally lightweight. Some mature model skills include non-executable `references/api.md` notes for safer local routing. They do not include scripts, hidden automation, or bundled API clients. For runnable API examples, use the official examples repository.

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
  apidot-3d-generation-api/
    SKILL.md
  apidot-music-generation-api/
    SKILL.md
  apidot-veo-3-1-api/
    SKILL.md
    references/api.md
  apidot-seedance-2-api/
    SKILL.md
    references/api.md
  apidot-gpt-image-2-api/
    SKILL.md
  apidot-nano-banana-pro-api/
    SKILL.md
  apidot-seedream-4-5-api/
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
