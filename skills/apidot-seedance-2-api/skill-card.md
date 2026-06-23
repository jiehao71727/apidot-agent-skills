# APIDot Seedance 2 API Skill Card

## Overview

`apidot-seedance-2-api` helps agents plan and submit APIDot Seedance 2 video generation tasks. It focuses on text-to-video, image-to-video, native-audio video generation, reference image workflows, reference video workflows, reference audio workflows, async task submission, task status polling, and webhook handoff.

This is a controlled full-structure trial for APIDot ClawHub skills. It includes documentation, a non-executable API reference, and one optional submit script. It does not include bundled API clients, install-time automation, background jobs, stored credentials, or automatic media downloads.

## Publisher

- ClawHub owner: `jiehao71727`
- APIDot docs: https://apidot.ai/docs
- APIDot model page: https://apidot.ai/models/seedance-2

## Intended Use

Use this skill when a user specifically wants to build with Seedance 2 through APIDot, choose a Seedance 2 request mode, or submit a reviewed Seedance 2 payload from a trusted server-side environment.

For broad video generation guidance across multiple APIDot model families, use `apidot-video-generation-api` instead.

## Included Files

- `SKILL.md`: agent-facing routing, safety, and workflow guidance.
- `references/api.md`: non-executable Seedance 2 request planning and async workflow notes.
- `scripts/submit_seedance_2.sh`: optional user-run submit helper for reviewed JSON payloads.
- `skill-card.md`: public behavior, risk, and maintenance summary.

## Input Boundary

The optional submit script accepts only a reviewed JSON payload file path or reviewed JSON from standard input. It expects `APIDOT_API_KEY` to already exist in the server-side environment.

The script does not create request payloads, infer missing media URLs, poll status, register webhooks, write files, store credentials, or save generated media.

## Expected Output

The optional submit script returns the APIDot submit response. After submission, agents should preserve the returned `data.task_id` and follow APIDot docs for task status polling or webhook delivery.

## Risks And Mitigations

- API key exposure: keep `APIDOT_API_KEY` server-side only and never place it in payload files, logs, screenshots, public repos, frontend bundles, or chat output.
- Private media exposure: review prompt text, source media URLs, callback URLs, and generated media URLs before logging or sharing.
- Invalid payloads: use the live APIDot Seedance 2 docs for current fields, limits, request modes, and model availability.
- Duplicate callbacks: webhook handlers should be idempotent and should not create duplicate visible results.
- Overuse of live calls: only submit real jobs when the user explicitly asks and understands the request payload.

## Source Of Truth

- APIDot Seedance 2 model page: https://apidot.ai/models/seedance-2
- APIDot Seedance 2 docs: https://apidot.ai/docs/seedance-2
- APIDot quickstart: https://apidot.ai/docs/quickstart
- APIDot webhooks: https://apidot.ai/docs/webhooks
- Seedance 2 examples: https://github.com/APIDotAI/seedance-2-api
- Main APIDot examples: https://github.com/APIDotAI/apidot-examples

## Maintenance Notes

Keep the script narrow. Do not add payload generation, local storage, automatic polling, media downloads, installer behavior, or background automation without a separate review.
