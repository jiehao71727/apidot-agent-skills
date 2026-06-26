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

APIDot ClawHub skills use three approved structures:

- Category skills: `SKILL.md` only.
- Normal model skills: `SKILL.md` plus `references/api.md`.
- Script pilot skills: `SKILL.md`, `references/api.md`, and a narrowly scoped helper under `scripts/`.

As of 2026-06-26, `apidot-seedance-2-api` and `apidot-veo-3-1-api` are the only script pilots. They were converted because their ClawHub feedback was strong enough to justify testing whether explicit submit helpers improve installs and retention. Do not copy that structure to other model skills by default.

Keep skill folders limited to files that ClawHub publishes as part of the package. Repository-only notes, audit summaries, and public skill cards should live under `docs/`, not inside `skills/<slug>/`, so `clawhub sync --dry-run` stays stable and does not keep detecting already-published skills as changed.

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

Normal model `SKILL.md` files must include:

- Frontmatter with `name`, `description`, `homepage`, and `metadata.openclaw.primaryEnv: APIDOT_API_KEY`.
- A documentation-only safety statement.
- Clear language that the skill has no scripts, automatic network calls, bundled clients, or stored credentials.
- Sections for When To Use, Security Rules, Workflow, Model Routing, Integration Guidance, and Official Links.

Script pilot `SKILL.md` files must clearly describe the optional script, require explicit user invocation, and state that the package has no install-time automation, background jobs, bundled API clients, automatic network calls, stored credentials, or generated-media persistence.

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

Use these current promotion gates before proposing another script pilot:

- Prefer a concrete model skill, not a category skill.
- Prefer video or other async task workflows where a submit helper directly returns a `task_id`.
- Require at least 120 downloads and at least 5 all-time installs from recent ClawHub feedback before promotion.
- Keep the script narrowly scoped to user-triggered submission only; it must not create payloads, poll status, register webhooks, store credentials, or save generated media.
- After `apidot-seedance-2-api` and `apidot-veo-3-1-api`, promote no additional script pilots until both show that submit helpers improve installs or current-install retention.

## ClawHub Security Scan Notes

On 2026-06-16, `apidot-ai-api` and `apidot-video-generation-api` moved from Review to Pass after reducing scan-triggering content.

On 2026-06-23, `apidot-seedance-2-api` exposed a packaging rule issue: `skill-card.md` was useful as repository documentation, but ClawHub did not include it in the published package. Keeping that file inside the skill folder made later dry runs think Seedance 2 needed another publish. Move repository-only artifacts to `docs/skill-cards/` instead.

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
