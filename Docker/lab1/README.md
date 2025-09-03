# Kubernetes Nginx Pod Lab

This lab demonstrates how to create, run, and access an Nginx Pod in Kubernetes.

## Part 1: Pod

### 1. Create the Pod YAML file

Create a file named **pod-nginx.yaml** with the following content:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: nginx-pod
spec:
  containers:
    - name: nginx
      image: nginx:latest
      ports:
        - containerPort: 80
```

### 2. Deploy the Pod

```bash
kubectl create -f pod-nginx.yaml
```

### 3. Verify that the Pod is running

```bash
kubectl get pods
```

<img width="498" height="251" alt="Screenshot 2025-09-03 173220" src="https://github.com/user-attachments/assets/809ad9ae-8b89-4662-a30b-006e48f97fc6" />


### 4. Port-forward the Pod

```bash
kubectl port-forward nginx-pod 8080:80
```
This will forward traffic from your localhost:8080 → nginx-pod:80.

### 5. Access Nginx in your browser

browser and go to Nginx welcome page:
```bash
curl http://localhost:8080
```
You should see the Nginx Welcome Page.


<img width="905" height="818" alt="Screenshot 2025-09-03 175204" src="https://github.com/user-attachments/assets/5fde6f1c-95e4-4d69-af50-63060eecc946" />


### 6. Delte Pod
```bash
kubectl delete pod nginx-pod
```
<img width="539" height="232" alt="image" src="https://github.com/user-attachments/assets/68f13d20-b23c-4a0e-85fc-37f7673ed5d2" />







