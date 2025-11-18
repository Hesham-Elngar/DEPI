1- initialize terraform provider and install plugins and library
```bash
terraform init
```
<img width="794" height="494" alt="Screenshot 2025-11-17 224401" src="https://github.com/user-attachments/assets/600469db-46c5-49e3-9792-24874e4f4582" />

2- create dry-run to ensure everything before apply
```bash
terraform plan
```
<img width="1188" height="643" alt="Screenshot 2025-11-17 230513" src="https://github.com/user-attachments/assets/884633c9-9e02-45e2-9f4c-54ef5ac235fd" />

3- applying infra code on AWS
```bash
terraform apply -auto-approve
```
<img width="1077" height="569" alt="Screenshot 2025-11-17 231542" src="https://github.com/user-attachments/assets/6dc16df4-4fd2-4dbe-a511-b48b0ec6dbea" />

---
4- Aws Console screenshots

<img width="1612" height="208" alt="Screenshot 2025-11-17 230711" src="https://github.com/user-attachments/assets/1b549c05-74bd-4fb5-b4fb-0291cb2f457b" />

<img width="1590" height="714" alt="Screenshot 2025-11-17 230740" src="https://github.com/user-attachments/assets/5498ba8b-3286-438d-aa34-a03ca3f63a33" />

<img width="1619" height="280" alt="Screenshot 2025-11-17 232730" src="https://github.com/user-attachments/assets/9126a396-2e6d-4857-a6e9-8c2fccf4bcaa" />

---

5- Destroying infra
```bash
terraform apply -auto-approve -destroy
```
<img width="1123" height="641" alt="Screenshot 2025-11-17 234137" src="https://github.com/user-attachments/assets/d6adb98f-2a2a-416d-8e23-fd46c1dce154" />

