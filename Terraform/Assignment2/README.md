1- initialize terraform provider and install plugins and library
```bash
terraform init
```
![alt text](<Screenshot 2025-11-17 224401.png>)

2- create dry-run to ensure everything before apply
```bash
terraform plan
```
![alt text](<Screenshot 2025-11-17 230513.png>)

3- applying infra code on AWS
```bash
terraform init -auto-approve
```
![alt text](image.png)

---
4- Aws Console screenshots

![alt text](<Screenshot 2025-11-17 230711.png>)

![alt text](<Screenshot 2025-11-17 230740.png>)

![alt text](<Screenshot 2025-11-17 232730.png>)

---

5- Destroying infra
```bash
terraform apply -auto-approve -destroy
```
![alt text](<Screenshot 2025-11-17 234137.png>)

