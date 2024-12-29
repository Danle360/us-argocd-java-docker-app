region: us-central1-a
us-east1-b
us-east1-b
export CLUSTER_NAME=demo
export CLUSTER_ZONE=us-east1-b
#gcloud auth login
n1-standard-1 $0.03325 hourly
n1-standard-2
n1-standard-4
n1-standard-8

export CLUSTER_ZONE=us-east1-b
export CLUSTER_NAME=prod-us-demo
#gcloud container clusters create --machine-type n1-standard-8 prod-gke-demo --zone $CLUSTER_ZONE --num-nodes 4 --min-nodes 4 --max-nodes 5

#worked 11-11-2024
gcloud container clusters create --machine-type n1-standard-4 --num-nodes 4 --zone $CLUSTER_ZONE --cluster-version latest $CLUSTER_NAME

export CLUSTER_ZONE=us-east1-b
export CLUSTER_NAME=prod-us-demo
gcloud container clusters get-credentials $CLUSTER_NAME --zone $CLUSTER_ZONE --project eagunu2025-441216

gcloud container clusters delete $CLUSTER_NAME --zone $CLUSTER_ZONE
gcloud container clusters delete prod-gke-demo  --zone us-east1-b

https://cloud.google.com/sdk/docs/install#linux  #gcloud CLI
https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-access-for-kubectl#gcloud_1
#gcloud container clusters create --machine-type n1-standard-4 --num-nodes 4 --zone $CLUSTER_ZONE --additional-zones us-central1-b,us-central1-c --cluster-version latest mydemo


gcloud container clusters create --machine-type n1-standard-8 --num-nodes 2 --zone us-central1-a  --cluster-version latest demo-cluster

#firewale rules
https://cloud.google.com/sdk/gcloud/reference/compute/firewall-rules/create

gcloud container clusters create example-cluster \
    --zone us-central1-a \
    --additional-zones us-central1-b,us-central1-c
#This failed
gcloud container clusters create \
  --machine-type n1-standard-2 \
  --num-nodes 2 \
  --zone us-central1-a \
  --additional-zones us-central1-b,us-central1-c \
  --cluster-version latest \
  demo-cluster

kubectl create clusterrolebinding cluster-admin-binding \
  --clusterrole=cluster-admin \
  --user=<GOOGLE-EMAIL-ACCOUNT>
#This worked last updated
gcloud container clusters create --machine-type n1-standard-2 --num-nodes 2 --node-locations  us-central1-a --additional-zones us-central1-b,us-central1-c --cluster-version latest mydemo
#Update the kubectl configuration to use the plugin:
https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-access-for-kubectl#install_plugin
gcloud container clusters get-credentials demo-cluster --region us-central1-a
gcloud container clusters delete demo-cluster --zone us-central1-a
# gcloud container clusters create $CLUSTER_NAME --image-type COS --num-nodes 1 --machine-type n1-standard-1 --zone $CLUSTER_ZONE
# gcloud container clusters create cka --image-type COS --num-nodes 2 --machine-type n1-standard-1 --zone us-east1-b
# working by the end of december 2022
