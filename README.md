# LanguageTool server on Azure
Host your own [LanguageTool server](https://languagetool.org) on Microsoft Azure.

## Azure Container Apps Deployment
1. Create container registry
2. Open Azure Cloud Shell
3. `az acr build --file Dockerfile --registry containerregistryname --image languagetool-azure .`
4. Create container app
   1. Go to app settings
   2. Uncheck "Use quickstart image".
   3. Select registry and image.
   4. Give 0.5 CPU cores, 1 Gi memory
   5. Enable HTTP Ingress.
   6. Set Ingress traffic to Accepting traffic from anywhere
   7. Set Target port to 8080.