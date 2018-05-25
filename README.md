# Deploy JBoss Operator

```
OLM must already be installed in your cluster. https://github.com/operator-framework/operator-lifecycle-manager/blob/master/Documentation/install/install.md 
```


```bash
# Build jboss opertor
# this assumes that the remote docker repository is already setup and docker client is logged in 
docker build -t docker.io/tohinkashem/jboss-operator:latest .
docker push docker.io/tohinkashem/jboss-operator:latest

# Once jboss operator image is pushed successfully, we can deploy the operator now
kubectl create -f deploy/jboss-app.crd.yaml
kubectl apply -f deploy/jboss-app-operator.v0.0.1.clusterserviceversion.yaml

# Now, you can deploy a jboss application
kubectl apply -f deploy/jboss-app.yaml 
```