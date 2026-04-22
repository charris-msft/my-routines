# My Routines

Personal Azure Functions Agents — serverless AI routines that run on Azure.

## Getting Started

1. Install [Azure Functions Core Tools](https://learn.microsoft.com/azure/azure-functions/functions-run-local)
2. Set `GITHUB_TOKEN` in `local.settings.json` (fine-grained PAT with Copilot requests read permission)
3. Start Azurite: `docker run -d -p 10000:10000 -p 10001:10001 -p 10002:10002 mcr.microsoft.com/azure-storage/azurite azurite --skipApiVersionCheck`
4. Run: `func start`
5. Open http://localhost:7071

## Agents

- **main.agent.md** — Interactive chat agent with built-in web UI
