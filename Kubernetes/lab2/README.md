# Kubernetes ReplicationController Lab

This lab demonstrates how to create, scale, and delete an **Nginx ReplicationController** in Kubernetes.

---

## Part 2: ReplicationController

### 1. Create the ReplicationController YAML file

Create a file named **rc-nginx.yaml** with the following content:

```yaml
apiVersion: v1
kind: ReplicationController
metadata: 
  name: nginx-rc
spec:
  replicas: 3
  selector:
    app: nginx
  template:
    metadata:
      name: nginx
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: nginx
        ports:
        - containerPort: 80
```


### 2. Deploy the ReplicationController
```yaml
kubectl create -f rc-nginx.yaml
```

### 3. Verify the ReplicationController and Pods
```yaml
kubectl get rc
kubectl get po
```

### 4. Scale the ReplicationController
```bash
kubectl scale rc nginx-rc --replicas=5
```

### 5. Verify new Pods are created
```bash
kubectl get pods
```

### 6. Delete the ReplicationController
```bash
kubectl delete rc nginx-rc
```


### 7. Verify that all objects are deleted
```bash
kubectl get all
```
---

<img width="1339" height="681" alt="Screenshot 2025-09-03 181247" src="https://github.com/user-attachments/assets/17b247cb-2be1-4421-a7bd-b9ba4fd46b5d" />

## Notes 💡
Notes

A ReplicationController ensures that the specified number of Pod replicas are always running.\
If a Pod fails, the ReplicationController automatically creates a new one.\
Scaling can be done dynamically using the kubectl scale command.\
ReplicaSets (with apps/v1) are the modern replacement, but RCs are still supported for backward compatibility.



