# confluence-k8s

```bash
helm repo add mox https://helm.mox.sh
helm repo update
```

```bash
kubectl create ns confluence
```

## Install

Update `values.yaml` with values that suit your needs (see https://chartcenter.io/mox/confluence-server) then run the following:

```bash
helm install confluence mox/confluence-server -f values.yaml -n confluence
```

## Uninstall

```bash
helm delete confluence -n confluence
```

The PostgreSQL PVC will not get automatically delete so:

```bash
kubectl delete -n confluence persistentvolumeclaim data-confluence-software-db-0
```
