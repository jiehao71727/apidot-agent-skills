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
