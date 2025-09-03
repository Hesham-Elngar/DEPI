# Kubernetes ReplicaSet Lab

<img width="800" height="962" alt="image" src="https://github.com/user-attachments/assets/7ce245b3-78d2-4b2f-9b2d-48835c3a3791" />

This lab demonstrates how to create, verify, scale, and delete an Nginx ReplicaSet in Kubernetes.

---


### 1. Create the ReplicaSet YAML file

Create a file named **rs-nginx.yaml** with the following content:

```yaml
apiVersion: apps/v1
kind: ReplicaSet
metadata:
  name: nginx-rs
  labels:
    app: nginx-rs
spec:
  replicas: 3
  selector:
    matchLabels:
      app: nginx-rs
  template:
    metadata:
      labels:
        app: nginx-rs
    spec:
      containers:
      - name: mynginx
        image: nginx:1.21
```


### 2. Deploy the ReplicaSet
```bash
kubectl create -f rs-nginx.yaml
```

### 3. Verify the ReplicaSet and Pods
```bash
kubectl get all
```

### 4. Scale the ReplicaSet
```bash
kubectl scale rs nginx-rs --replicas=5
```

### 5. Verify new Pods are created
```bash
kubectl get all
```

---

## Screenshots 📸

### creating
<img width="874" height="636" alt="Screenshot 2025-09-03 184138" src="https://github.com/user-attachments/assets/ffd0f462-17db-4532-8f09-6177467e8bfd" />

### Scalling
<img width="759" height="684" alt="Screenshot 2025-09-03 184236" src="https://github.com/user-attachments/assets/c3062b9d-7059-41ed-a900-046dd65c7bbe" />

### Deleting
<img width="818" height="751" alt="Screenshot 2025-09-03 184358" src="https://github.com/user-attachments/assets/3f2c0b45-c5d5-4ad4-8795-d997a6e4d362" />

--- 
## Notes 💡
Notes

A ReplicaSet ensures the desired number of Pods are always running.\
It’s the successor to ReplicationController and supports richer selectors.\
Deployments are recommended for production since they manage ReplicaSets and support rolling


