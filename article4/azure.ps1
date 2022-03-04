# UPDATE ALLOWED_HOSTS TO '*'

# BUILD IMAGE conduit:v1

# az login

az group create --name conduit-rg --location eastus

az aks create --resource-group conduit-rg --name conduit-cluster --node-count 1 --generate-ssh-keys

az aks get-credentials --resource-group conduit-rg --name conduit-cluster

az ad sp create-for-rbac --role AcrPull

az acr login --name conduit-acr

az aks update -n conduit-cluster -g conduit-rg --attach-acr conduit-acr

docker tag conduit:v1 conduit-acr.azurecr.io/conduit:v1

docker push conduit-acr.azurecr.io/conduit:v1

kubectl apply -f conduit-app.yaml

kubectl get service conduit --watch

# COPY EXTERNAL IP

# MODIFY ON AZURE: Home > conduit-cluster > conduit > conduit | YAML
