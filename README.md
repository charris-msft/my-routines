# My Routines

Personal Azure Functions Agents — serverless AI routines that run on Azure.

## Getting Started

1. Install [Azure Functions Core Tools](https://learn.microsoft.com/azure/azure-functions/functions-run-local)
2. Set `GITHUB_TOKEN` in `local.settings.json` (fine-grained PAT with Copilot requests read permission)
3. Start Azurite: `docker run -d -p 10000:10000 -p 10001:10001 -p 10002:10002 mcr.microsoft.com/azure-storage/azurite azurite --skipApiVersionCheck`
4. Run: `func start`
5. Open http://localhost:7071

## CI/CD Deployment

The repository includes a GitHub Actions workflow (`.github/workflows/deploy.yml`) that automatically deploys to Azure Functions on push to `main`.

**To enable deployment:**

1. Get your Azure Function App's publish profile:
   - In Azure Portal, navigate to your Function App
   - Click **Get publish profile** (top toolbar)
   - Copy the XML content
2. Add as a secret in GitHub (Settings → Secrets and Variables → Actions):
   - Name: `AZURE_FUNCTIONAPP_PUBLISH_PROFILE`
   - Value: Paste the publish profile XML
3. Update `AZURE_FUNCTIONAPP_NAME` in the workflow file with your Function App name

The workflow installs dependencies and deploys automatically on each push to main.

## Agents

- **main.agent.md** — Interactive chat agent with built-in web UI
