kubectl create namespace dagster-cloud
kubectl create secret generic dagster-cloud-agent-token \
    --from-literal=DAGSTER_CLOUD_AGENT_TOKEN=${DAGSTER_CLOUD_AGENT_TOKEN} \
    --namespace dagster-cloud
    