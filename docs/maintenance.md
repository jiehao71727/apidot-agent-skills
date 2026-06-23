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
- Confirm the selected structure matches the new skill structure rules below.
- Confirm no real API keys, tokens, secrets, customer data, private logs, or internal URLs are present.
- Confirm APIDot links resolve.
- Confirm the skill does not hard-code prices, discounts, uptime, benchmark, refund, or competitor-comparison claims.
- Confirm `description` includes the important discovery terms.
- Confirm category skills link to model-specific repositories instead of duplicating high-maintenance pricing or comparison content.
- Confirm docs-only skills avoid inline executable API request examples. Prefer workflow guidance plus links to official docs and GitHub examples.
- Run `clawhub sync --dry-run --owner jiehao71727`.

## New Skill Structure Rules

Use these defaults for new APIDot ClawHub skills.

### Category Skills

Category skills stay as a single `SKILL.md`.

Use this structure for broad APIDot entry points:

- `apidot-ai-api`
- `apidot-image-generation-api`
- `apidot-video-generation-api`
- `apidot-3d-generation-api`
- `apidot-music-generation-api`
- `apidot-async-workflow`

Category skills should route users to APIDot docs, model pages, and model-specific skills. They should not duplicate model-level request fields or high-maintenance details.

### Model Skills

Model-specific skills use PoYo-lite by default:

```text
skills/<model-skill-slug>/
  SKILL.md
  references/api.md
```

Use this structure for skills focused on one model family, such as Sora, Veo, Seedance, Nano Banana, FLUX, Kling, Meshy, Tripo, or similar APIDot model entries.

The `SKILL.md` must include:

- Frontmatter with `name`, `description`, `homepage`, and `metadata.openclaw.primaryEnv: APIDOT_API_KEY`.
- A documentation-only safety statement.
- Clear language that the skill has no scripts, automatic network calls, bundled clients, or stored credentials.
- Sections for When To Use, Security Rules, Workflow, Model Routing, Integration Guidance, and Official Links.

The `references/api.md` must include:

- Source Of Truth.
- Model Family.
- Request Planning.
- Async Flow.
- Implementation Notes.

The reference file is a local, non-executable routing guide. It must not include copyable API request examples, shell commands, auth header examples, JavaScript, TypeScript, Python, or Node snippets.

### Full PoYo Structure

Do not use full PoYo structure by default.

Full PoYo structure includes scripts or direct submission helpers. Only evaluate it when a skill already has meaningful downloads or installs and users explicitly need direct task submission from the skill.

If a script version is ever planned, write a separate implementation plan first. Do not quietly add `scripts/`, installers, shell automation, bundled API clients, or executable request examples to a docs-only skill.

## ClawHub Security Scan Notes

On 2026-06-16, `apidot-ai-api` and `apidot-video-generation-api` moved from Review to Pass after reducing scan-triggering content.

What triggered Review risk:

- Inline shell request examples in a Skill, especially credential setup, auth headers, and direct external API requests.
- Wording that made a docs-only Skill look like it might perform live API calls or include automation.
- Generated ClawHub security summaries can be conservative or imperfect, so avoid terms and examples that look executable unless the Skill truly needs them.

What worked:

- Keep ClawHub Skills documentation-only unless there is a deliberate reason to ship scripts.
- State clearly that the release contains only `SKILL.md` and has no executable files, install-time automation, bundled API clients, automatic network calls, or stored credentials.
- Replace inline runnable request examples with stable workflow steps and links to current APIDot docs or model-specific GitHub example repositories.
- Do not keep republishing small scan-only edits after a clean moderation result. If a Skill remains Review but is clean, treat it as scanner conservatism unless there is a clear actionable finding.

## Content Rules

Prefer stable APIDot facts:

- One API key.
- Image, video, chat, music, and 3D workflows.
- Submit generation tasks through `/api/generate/submit`.
- Poll generation tasks through `/api/generate/status/{task_id}`.
- Use `callback_url` for webhook delivery when appropriate.
- Keep API keys server-side.

Link to APIDot docs and model pages for request fields, model availability, pricing, and current product details.
