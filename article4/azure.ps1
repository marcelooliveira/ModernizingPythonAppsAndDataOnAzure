UPDATE ALLOWED_HOSTS TO '*'

az login

az group create --name django-project --location eastus

az aks create --resource-group django-project --name djangoappcluster --node-count 1 --generate-ssh-keys

az aks get-credentials --resource-group django-project --name djangoappcluster

kubectl get nodes

BUILD IMAGE

az ad sp create-for-rbac --role AcrPull

az acr login --name conduitacr

az aks update -n djangoappcluster -g django-project --attach-acr conduitacr

docker tag conduit:v1 conduitacr.azurecr.io/conduit:v1

docker push conduitacr.azurecr.io/conduit:v1

kubectl apply -f djangoapp.yaml

kubectl get service conduit --watch


