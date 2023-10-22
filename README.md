## nettools

Container image with network tools for troubleshooting Kubernetes clusters


Pod template example:

```
apiVersion: v1
kind: Pod
metadata:
  name: nettools
spec:
  containers:
  - name: nettools
    image: c8h11no2/nettools:latest
    resources:
      requests:
        memory: "64Mi"
        cpu: "100m"
      limits:
        memory: "64Mi"
        cpu: "100m"
    command:
      - sleep
      - "3600"
    imagePullPolicy: IfNotPresent
  restartPolicy: Never
```
You can keep the following yaml file handy and run it in a pod

`kubectl apply -f nettools.yaml --namespace=default`

and login to the container

`kubectl exec -it nettools --namespace=default -- /bin/bash`

and delete the pod after it is no longer needed

`kubectl delete -f nettools.yaml --namespace=default`

If you just want to use the network tools on a docker host:

`docker run -ti --rm c8h11no2/nettools:latest /bin/bash`