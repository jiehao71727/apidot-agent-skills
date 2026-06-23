# Publishing

Use this workflow to publish APIDot agent skills to ClawHub.

## Prerequisites

- GitHub access to `jiehao71727/apidot-agent-skills`.
- ClawHub account authenticated as `jiehao71727`.
- `clawhub` CLI installed.

Install the CLI if needed:

```powershell
npm i -g clawhub
clawhub --help
```

## Publish Flow

Run from the repository root:

```powershell
clawhub login
clawhub sync --dry-run --owner jiehao71727
clawhub sync --all --owner jiehao71727
```

Always run the dry run first. It scans skill folders containing `SKILL.md` and shows what ClawHub will publish without uploading a release.

## New Skill Preflight

Before creating or publishing a new skill, decide the skill type:

- Use a single `SKILL.md` for broad category skills.
- Use PoYo-lite for model-specific skills: `SKILL.md` plus non-executable `references/api.md`.

For every model-specific skill:

- Confirm the APIDot model page returns 200.
- Confirm the APIDot docs page returns 200.
- Include `references/api.md` in the first release.
- Keep request examples in APIDot docs or GitHub examples, not inside the ClawHub skill.

Do not publish a model-specific skill for a keyword unless APIDot has a live model page and docs page for it.

## After Publishing

Check the public listing and search results:

- `apidot`
- `ai api`
- `image generation api`
- `video generation api`
- `gpt image 2`
- `seedance 2`
- `veo 3.1`

If a release is hidden, scan-held, or blocked, inspect the owner-visible ClawHub diagnostics before publishing another version.
