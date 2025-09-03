# Kubernetes Controllers Lab Notes

## 🔹 What is the main difference between a ReplicationController and a ReplicaSet in Kubernetes?

- **ReplicaSet** is modern and faster.  
- **ReplicationController** can be considered as legacy or deprecated but still works.  

👉 Think of it this way:  
- **ReplicationController** = old Nokia phone 📞 (still works, but outdated).  
- **ReplicaSet** = modern smartphone 📱 (better features, faster, future-proof).  

---

## 🔹 If you delete a Pod managed by a ReplicaSet, what happens?

- ReplicaSet notices that and it immediately creates a new Pod to replace the deleted one.  
- The new Pod gets a different **name/UID**, but has the same **labels and spec** as defined in the ReplicaSet’s template.  

<img width="800" height="962" alt="image" src="https://github.com/user-attachments/assets/f7a7d649-3201-4fc3-94f0-ecfac7b1682b" />

---

## 🔹 Why might you prefer a Deployment over a ReplicaSet in production?

- Because it supports **rolling out** and **rolling update** and can manage ReplicaSets.  

👉 So in practice:  
- **ReplicaSet** = building block (used internally by Deployment).  
- **Deployment** = production-ready controller with advanced rollout/rollback features.  

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/c034a439-0f5f-4b66-aaae-6b3b042ecbd8" />
