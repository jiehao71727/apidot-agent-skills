# Maintenance

This repository is for APIDot agent and ClawHub distribution assets.

## Keep Here

- ClawHub/OpenClaw skills.
- Agent-facing prompt and workflow instructions.
- Publishing and maintenance notes for those skills.

## Keep Elsewhere

- General API examples: `APIDotAI/apidot-examples`.
- Model-specific examples: APIDot model repositories such as `gpt-image-2-api`, `seedance-2-api`, and `veo-3.1-api`.
- Website and docs implementation: APIDot website codebase.
- Social drafts and weekly plans: APIDot DevRel workspace.
- Backend API code: APIDot backend repository.

## Release Checklist

Before publishing any ClawHub version:

- Confirm `skills/<slug>/SKILL.md` exists.
- Confirm YAML frontmatter is valid.
- Confirm no real API keys, tokens, secrets, customer data, private logs, or internal URLs are present.
- Confirm APIDot links resolve.
- Confirm the skill does not hard-code prices, discounts, uptime, benchmark, refund, or competitor-comparison claims.
- Confirm `description` includes the important discovery terms.
- Confirm category skills link to model-specific repositories instead of duplicating high-maintenance pricing or comparison content.
- Run `clawhub sync --dry-run --owner jiehao71727`.

## Content Rules

Prefer stable APIDot facts:

- One API key.
- Image, video, chat, music, and 3D workflows.
- Submit generation tasks through `/api/generate/submit`.
- Poll generation tasks through `/api/generate/status/{task_id}`.
- Use `callback_url` for webhook delivery when appropriate.
- Keep API keys server-side.

Link to APIDot docs and model pages for request fields, model availability, pricing, and current product details.
