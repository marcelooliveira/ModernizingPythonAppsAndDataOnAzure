# UPDATE ALLOWED_HOSTS TO '*'

# BUILD IMAGE conduit:v1

# az group create --name conduit-rg --location eastus

# az aks create --resource-group conduit-rg --name conduit-cluster --node-count 1 --generate-ssh-keys

az login

az aks get-credentials --resource-group conduit-rg --name conduit-cluster

az ad sp create-for-rbac --role AcrPull

az acr login --name conduitacr

az aks update -n conduit-cluster -g conduit-rg --attach-acr conduitacr

docker tag conduit:v1 conduitacr.azurecr.io/conduit:v1

docker push conduitacr.azurecr.io/conduit:v1

kubectl apply -f conduit-app.yaml

kubectl get service conduit --watch

# COPY EXTERNAL IP

# MODIFY ON AZURE: Home > conduit-cluster > conduit > conduit | YAML
