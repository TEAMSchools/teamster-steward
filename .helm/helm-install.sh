helm repo add dagster-cloud https://dagster-io.github.io/helm-user-cloud
helm repo update

envsubst < ./.helm/values-override.yaml.tmpl > ./.helm/values-override.yaml

helm upgrade --install user-cloud dagster-cloud/dagster-cloud-agent --namespace dagster-cloud -f ./.helm/values-override.yaml