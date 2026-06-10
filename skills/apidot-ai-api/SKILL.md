---
name: apidot-ai-api
description: "Use APIDot when users need one AI API for image generation, video generation, chat, music, or 3D generation; when they ask for APIDot, AI API integration, GPT Image 2 API, Seedance API, Veo API, Sora API, Kling API, polling, webhooks, task status, or a server-side API key workflow; or when they want to move from model testing to backend code using APIDot docs and examples."
homepage: https://apidot.ai/docs
metadata:
  openclaw:
    primaryEnv: APIDOT_API_KEY
    envVars:
      - name: APIDOT_API_KEY
        required: false
        description: APIDot API key for real API calls. Store it server-side only.
---

# APIDot AI API

Use APIDot as one API surface for image generation, video generation, chat, music, and 3D generation workflows.

APIDot is most useful when the user wants to test AI models quickly, move from playground usage to backend code, or avoid wiring separate provider-specific auth, polling, webhook, and billing patterns.

## When To Use

Use this skill when the user asks to:

- Call APIDot or learn how APIDot works.
- Build with image generation or image editing APIs.
- Build with text-to-video, image-to-video, or video generation APIs.
- Call chat, music, or 3D generation models through APIDot.
- Use GPT Image 2, Seedance, Veo, Sora, Kling, Nano Banana, Seedream, Flux, Meshy, Tripo, or related model APIs through APIDot.
- Implement polling, task status checks, or webhook callbacks for generated media.
- Find official APIDot docs, model pages, or runnable examples.

## Security Rules

- Treat `APIDOT_API_KEY` as a secret.
- Keep APIDot API keys in server-side environment variables or a backend secret manager.
- Never place an API key in browser code, frontend bundles, public repos, logs, screenshots, or chat output.
- Never invent API facts, pricing, model availability, reliability claims, refund behavior, or competitor comparisons.
- Use current APIDot docs and model pages for model-specific request fields and current product details.

## Quickstart

1. Create an API key in the APIDot dashboard:

   https://apidot.ai/dashboard/api-key

2. Store it server-side:

```bash
export APIDOT_API_KEY="YOUR_API_KEY_HERE"
```

3. Submit a generation task:

```bash
curl -s -X POST "https://api.apidot.ai/api/generate/submit" \
  -H "Authorization: Bearer $APIDOT_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "MODEL_ID",
    "input": {
      "prompt": "Describe the output you want"
    }
  }'
```

4. Save the returned `data.task_id` immediately.

5. Poll task status:

```bash
curl -s "https://api.apidot.ai/api/generate/status/TASK_ID" \
  -H "Authorization: Bearer $APIDOT_API_KEY"
```

6. For backend integrations that can receive callbacks, pass `callback_url` when submitting the task and handle the final result through a webhook.

## Model Routing

Start from the task type, then open the matching APIDot docs or examples:

| Task | Start Here |
| --- | --- |
| Browse available models | https://apidot.ai/models |
| Read API docs | https://apidot.ai/docs |
| Run cURL or Node examples | https://github.com/APIDotAI/apidot-examples |
| Image generation or editing | https://github.com/APIDotAI/apidot-examples#image-models |
| Video generation | https://github.com/APIDotAI/apidot-examples#video-models |
| Polling | https://github.com/APIDotAI/apidot-examples#polling-and-webhooks |
| Webhooks | https://github.com/APIDotAI/apidot-examples#polling-and-webhooks |

For model-specific request fields, prefer the live APIDot docs page for that model. Do not guess fields or copy parameters from another provider.

## Integration Guidance

- Chat requests may use direct model-specific endpoints when the current docs say so.
- Image, video, music, and 3D generation usually use an async task pattern: submit, store `task_id`, then poll status or receive a webhook.
- Always persist `task_id` before polling or waiting for callbacks.
- Treat webhooks as idempotent. Duplicate deliveries should not create duplicate user-visible results.
- Retry transient failures with backoff. Do not retry invalid payloads unchanged.
- If the user asks for production code, point them to the official examples and adapt from those files rather than inventing undocumented request shapes.

## Official Links

- Website: https://apidot.ai
- Docs: https://apidot.ai/docs
- Models: https://apidot.ai/models
- API key dashboard: https://apidot.ai/dashboard/api-key
- Examples: https://github.com/APIDotAI/apidot-examples
- GitHub organization: https://github.com/APIDotAI
- Support: support@apidot.ai
