# APIDot Agent Skills

Agent-facing skills and documentation for using APIDot from ClawHub and OpenClaw.

APIDot gives developers one API key for image generation, video generation, chat, music, and 3D generation workflows. This repository publishes lightweight agent instructions that help AI agents discover APIDot, choose the right APIDot docs, and follow the standard submit, polling, and webhook flow safely.

## Available Skills

| Skill | Purpose |
| --- | --- |
| `apidot-ai-api` | Use APIDot as one AI API for image, video, chat, music, and 3D generation workflows. |
| `apidot-model-catalog-api` | Use APIDot model catalog guidance to choose live model pages and route to the right APIDot skill. |
| `apidot-chat-api` | Use APIDot for chat API workflows, including coding assistants, reasoning models, streaming planning, and server-side key safety. |
| `apidot-video-generation-api` | Use APIDot for video generation API workflows, including text-to-video, image-to-video, polling, and webhooks. |
| `apidot-image-generation-api` | Use APIDot for image generation and image editing API workflows, including text-to-image, image-to-image, polling, and webhooks. |
| `apidot-async-workflow` | Use APIDot async task workflow guidance for task submission, task status, polling, callback URLs, and webhooks. |
| `apidot-3d-generation-api` | Use APIDot for 3D generation API workflows, including text-to-3D, image-to-3D, polling, and webhooks. |
| `apidot-music-generation-api` | Use APIDot for music generation API workflows, including text-to-music, song generation, polling, and webhooks. |
| `apidot-generate-music-api` | Use APIDot for Generate Music API workflows, including prompt-to-song generation, music detail polling, callbacks, and webhooks. |
| `apidot-minimax-music-2-6-api` | Use APIDot for MiniMax Music 2.6 API workflows, including music generation, lyrics, instrumentals, polling, and webhooks. |
| `apidot-veo-3-1-api` | Use APIDot for Veo 3.1 API workflows, including text-to-video, image-to-video, polling, and webhooks. |
| `apidot-seedance-2-api` | Use APIDot for Seedance 2 API workflows, including text-to-video, image-to-video, native audio, polling, and webhooks. |
| `apidot-gpt-image-2-api` | Use APIDot for GPT Image 2 API workflows, including image generation, image editing, polling, and webhooks. |
| `apidot-nano-banana-pro-api` | Use APIDot for Nano Banana Pro API workflows, including image generation, image editing, polling, and webhooks. |
| `apidot-seedream-4-api` | Use APIDot for Seedream 4 API workflows, including image generation, image editing, polling, and webhooks. |
| `apidot-seedream-4-5-api` | Use APIDot for Seedream 4.5 API workflows, including image generation, image editing, polling, and webhooks. |
| `apidot-sora-2-official-api` | Use APIDot for Sora 2 Official API workflows, including prompt-to-video, image-guided video, polling, and webhooks. |
| `apidot-happy-horse-api` | Use APIDot for Happy Horse API workflows, including text-to-video, image-to-video, video editing, polling, and webhooks. |
| `apidot-nano-banana-2-api` | Use APIDot for Nano Banana 2 API workflows, including image generation, image editing, readable text, polling, and webhooks. |
| `apidot-meshy-6-3d-api` | Use APIDot for Meshy 6 3D API workflows, including text-to-3D, image-to-3D, multi-image-to-3D, polling, and webhooks. |
| `apidot-tripo-h31-3d-api` | Use APIDot for Tripo H3.1 3D API workflows, including text-to-3D, image-to-3D, multiview-to-3D, polling, and webhooks. |
| `apidot-tripo-p1-3d-api` | Use APIDot for Tripo P1 3D API workflows, including text-to-3D, image-to-3D, polling, and webhooks. |
| `apidot-claude-4-6-api` | Use APIDot for Claude 4.6 API workflows, including Messages API, chat, streaming, and coding-agent use cases. |
| `apidot-gemini-3-api` | Use APIDot for Gemini 3 API workflows, including native generateContent, streaming, chat, and coding-assistant use cases. |
| `apidot-wan-2-7-video-api` | Use APIDot for Wan 2.7 Video API workflows, including text-to-video, image-to-video, reference-to-video, edit-video, polling, and webhooks. |
| `apidot-flux-2-api` | Use APIDot for FLUX.2 API workflows, including image generation, image editing, multi-reference generation, polling, and webhooks. |
| `apidot-flux-kontext-api` | Use APIDot for Flux Kontext API workflows, including context-aware image generation, image editing, character consistency, local edits, polling, and webhooks. |
| `apidot-kling-2-6-api` | Use APIDot for Kling 2.6 API workflows, including text-to-video, image-to-video, native audio, polling, and webhooks. |
| `apidot-kling-2-1-api` | Use APIDot for Kling 2.1 API workflows, including image-to-video, start-frame guidance, optional end-frame control, polling, and webhooks. |
| `apidot-grok-imagine-api` | Use APIDot for Grok Imagine API workflows, including image generation, image editing, text-to-video, image-to-video, polling, and webhooks. |
| `apidot-hailuo-2-3-api` | Use APIDot for Hailuo 2.3 API workflows, including text-to-video, image-to-video, prompt optimization, polling, and webhooks. |
| `apidot-kling-3-0-api` | Use APIDot for Kling 3.0 API workflows, including text-to-video, image-to-video, multi-shot video, Native Audio, polling, and webhooks. |
| `apidot-runway-gen-4-5-api` | Use APIDot for Runway Gen-4.5 API workflows, including cinematic text-to-video, image-to-video, polling, and webhooks. |
| `apidot-wan-2-6-api` | Use APIDot for Wan 2.6 API workflows, including text-to-video, image-to-video, video-to-video, multi-shot video, polling, and webhooks. |
| `apidot-veo-3-1-official-api` | Use APIDot for Veo 3.1 Official API workflows, including text-to-video, image guidance, first/last-frame control, native audio, polling, and webhooks. |
| `apidot-seedance-1-5-pro-api` | Use APIDot for Seedance 1.5 Pro API workflows, including text-to-video, image-to-video, synchronized audio, frame control, polling, and webhooks. |
| `apidot-kling-o3-api` | Use APIDot for Kling O3 API workflows, including text-to-video, image-to-video, reference-guided video, multi-shot video, Native Audio, polling, and webhooks. |
| `apidot-kling-o1-image-api` | Use APIDot for Kling O1 Image API workflows, including image editing, reference-guided image changes, polling, and webhooks. |
| `apidot-kling-o3-image-api` | Use APIDot for Kling O3 Image API workflows, including text-to-image, image editing, element control, polling, and webhooks. |
| `apidot-hailuo-02-api` | Use APIDot for Hailuo 02 API workflows, including text-to-video, image-to-video, first/last-frame guidance, polling, and webhooks. |
| `apidot-z-image-api` | Use APIDot for Z-Image API workflows, including text-to-image, prompt planning, aspect ratio planning, polling, and webhooks. |
| `apidot-seedream-5-0-lite-api` | Use APIDot for Seedream 5.0 Lite API workflows, including image generation, image editing, reference-guided layouts, polling, and webhooks. |
| `apidot-grok-imagine-video-1-5-api` | Use APIDot for Grok Imagine Video 1.5 API workflows, including image-to-video, reference image animation, prompt-guided motion, polling, and webhooks. |
| `apidot-kling-2-5-turbo-pro-api` | Use APIDot for Kling 2.5 Turbo Pro API workflows, including text-to-video, image-to-video, start/end-frame guidance, polling, and webhooks. |
| `apidot-wan-2-2-fast-api` | Use APIDot for Wan 2.2 Fast API workflows, including fast text-to-video drafts, image-to-video drafts, simple transitions, polling, and webhooks. |

## Install

ClawHub listings:

https://clawhub.ai/jiehao71727/apidot-ai-api

https://clawhub.ai/jiehao71727/apidot-model-catalog-api

https://clawhub.ai/jiehao71727/apidot-chat-api

https://clawhub.ai/jiehao71727/apidot-video-generation-api

https://clawhub.ai/jiehao71727/apidot-image-generation-api

https://clawhub.ai/jiehao71727/apidot-async-workflow

https://clawhub.ai/jiehao71727/apidot-3d-generation-api

https://clawhub.ai/jiehao71727/apidot-music-generation-api

https://clawhub.ai/jiehao71727/apidot-generate-music-api

https://clawhub.ai/jiehao71727/apidot-minimax-music-2-6-api

https://clawhub.ai/jiehao71727/apidot-veo-3-1-api

https://clawhub.ai/jiehao71727/apidot-seedance-2-api

https://clawhub.ai/jiehao71727/apidot-gpt-image-2-api

https://clawhub.ai/jiehao71727/apidot-nano-banana-pro-api

https://clawhub.ai/jiehao71727/apidot-seedream-4-api

https://clawhub.ai/jiehao71727/apidot-seedream-4-5-api

https://clawhub.ai/jiehao71727/apidot-sora-2-official-api

https://clawhub.ai/jiehao71727/apidot-happy-horse-api

https://clawhub.ai/jiehao71727/apidot-nano-banana-2-api

https://clawhub.ai/jiehao71727/apidot-meshy-6-3d-api

https://clawhub.ai/jiehao71727/apidot-tripo-h31-3d-api

https://clawhub.ai/jiehao71727/apidot-tripo-p1-3d-api

https://clawhub.ai/jiehao71727/apidot-claude-4-6-api

https://clawhub.ai/jiehao71727/apidot-gemini-3-api

https://clawhub.ai/jiehao71727/apidot-wan-2-7-video-api

https://clawhub.ai/jiehao71727/apidot-flux-2-api

https://clawhub.ai/jiehao71727/apidot-flux-kontext-api

https://clawhub.ai/jiehao71727/apidot-kling-2-6-api

https://clawhub.ai/jiehao71727/apidot-kling-2-1-api

https://clawhub.ai/jiehao71727/apidot-grok-imagine-api

https://clawhub.ai/jiehao71727/apidot-hailuo-2-3-api

https://clawhub.ai/jiehao71727/apidot-kling-3-0-api

https://clawhub.ai/jiehao71727/apidot-runway-gen-4-5-api

https://clawhub.ai/jiehao71727/apidot-wan-2-6-api

https://clawhub.ai/jiehao71727/apidot-veo-3-1-official-api

https://clawhub.ai/jiehao71727/apidot-seedance-1-5-pro-api

https://clawhub.ai/jiehao71727/apidot-kling-o3-api

https://clawhub.ai/jiehao71727/apidot-kling-o1-image-api

https://clawhub.ai/jiehao71727/apidot-kling-o3-image-api

https://clawhub.ai/jiehao71727/apidot-hailuo-02-api

https://clawhub.ai/jiehao71727/apidot-z-image-api

https://clawhub.ai/jiehao71727/apidot-seedream-5-0-lite-api

https://clawhub.ai/jiehao71727/apidot-grok-imagine-video-1-5-api

https://clawhub.ai/jiehao71727/apidot-kling-2-5-turbo-pro-api

https://clawhub.ai/jiehao71727/apidot-wan-2-2-fast-api

```text
clawhub install apidot-ai-api
clawhub install apidot-model-catalog-api
clawhub install apidot-chat-api
clawhub install apidot-video-generation-api
clawhub install apidot-image-generation-api
clawhub install apidot-async-workflow
clawhub install apidot-3d-generation-api
clawhub install apidot-music-generation-api
clawhub install apidot-generate-music-api
clawhub install apidot-minimax-music-2-6-api
clawhub install apidot-veo-3-1-api
clawhub install apidot-seedance-2-api
clawhub install apidot-gpt-image-2-api
clawhub install apidot-nano-banana-pro-api
clawhub install apidot-seedream-4-api
clawhub install apidot-seedream-4-5-api
clawhub install apidot-sora-2-official-api
clawhub install apidot-happy-horse-api
clawhub install apidot-nano-banana-2-api
clawhub install apidot-meshy-6-3d-api
clawhub install apidot-tripo-h31-3d-api
clawhub install apidot-tripo-p1-3d-api
clawhub install apidot-claude-4-6-api
clawhub install apidot-gemini-3-api
clawhub install apidot-wan-2-7-video-api
clawhub install apidot-flux-2-api
clawhub install apidot-flux-kontext-api
clawhub install apidot-kling-2-6-api
clawhub install apidot-kling-2-1-api
clawhub install apidot-grok-imagine-api
clawhub install apidot-hailuo-2-3-api
clawhub install apidot-kling-3-0-api
clawhub install apidot-runway-gen-4-5-api
clawhub install apidot-wan-2-6-api
clawhub install apidot-veo-3-1-official-api
clawhub install apidot-seedance-1-5-pro-api
clawhub install apidot-kling-o3-api
clawhub install apidot-kling-o1-image-api
clawhub install apidot-kling-o3-image-api
clawhub install apidot-hailuo-02-api
clawhub install apidot-z-image-api
clawhub install apidot-seedream-5-0-lite-api
clawhub install apidot-grok-imagine-video-1-5-api
clawhub install apidot-kling-2-5-turbo-pro-api
clawhub install apidot-wan-2-2-fast-api
```

If you do not have the ClawHub CLI installed, follow the ClawHub install documentation first.

These skills are intentionally lightweight. Mature and new model-specific skills use non-executable `references/api.md` notes for safer local routing by default. They do not include scripts, hidden automation, or bundled API clients unless separately planned. `apidot-seedance-2-api` is a controlled full-structure trial with one optional submit script. For runnable API examples, use the official examples repository.

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
    scripts/submit_seedance_2.sh
  apidot-gpt-image-2-api/
    SKILL.md
    references/api.md
  apidot-nano-banana-pro-api/
    SKILL.md
    references/api.md
  apidot-seedream-4-5-api/
    SKILL.md
    references/api.md
  apidot-sora-2-official-api/
    SKILL.md
    references/api.md
  apidot-happy-horse-api/
    SKILL.md
    references/api.md
  apidot-nano-banana-2-api/
    SKILL.md
    references/api.md
  apidot-meshy-6-3d-api/
    SKILL.md
  apidot-tripo-h31-3d-api/
    SKILL.md
  apidot-tripo-p1-3d-api/
    SKILL.md
  apidot-claude-4-6-api/
    SKILL.md
  apidot-gemini-3-api/
    SKILL.md
  apidot-wan-2-7-video-api/
    SKILL.md
  apidot-flux-2-api/
    SKILL.md
  apidot-flux-kontext-api/
    SKILL.md
    references/api.md
  apidot-kling-2-6-api/
    SKILL.md
  apidot-kling-2-1-api/
    SKILL.md
    references/api.md
  apidot-grok-imagine-api/
    SKILL.md
  apidot-hailuo-2-3-api/
    SKILL.md
    references/api.md
  apidot-kling-3-0-api/
    SKILL.md
    references/api.md
  apidot-runway-gen-4-5-api/
    SKILL.md
    references/api.md
  apidot-wan-2-6-api/
    SKILL.md
    references/api.md
  apidot-veo-3-1-official-api/
    SKILL.md
    references/api.md
  apidot-seedance-1-5-pro-api/
    SKILL.md
    references/api.md
  apidot-kling-o3-api/
    SKILL.md
    references/api.md
  apidot-kling-o3-image-api/
    SKILL.md
    references/api.md
  apidot-hailuo-02-api/
    SKILL.md
    references/api.md
  apidot-z-image-api/
    SKILL.md
    references/api.md
  apidot-seedream-5-0-lite-api/
    SKILL.md
    references/api.md
docs/
  publishing.md
  maintenance.md
  skill-cards/
    apidot-seedance-2-api.md
CHANGELOG.md
LICENSE
README.md
```

## Maintenance Policy

Keep this repository focused on agent and ClawHub distribution. Do not add APIDot backend code, website code, or broad social content here.

Do not commit real API keys, tokens, internal URLs, customer data, pricing claims, discount claims, uptime claims, or competitor comparisons. Link to APIDot docs and model pages for details that may change.
