1- initialize terraform provider and install plugins and library
```bash
terraform init
```
<img width="794" height="494" alt="Screenshot 2025-11-17 224401" src="https://github.com/user-attachments/assets/cd8e9ef0-072f-444a-9fd1-007ac1246d1e" />

2- create dry-run to ensure everything before apply
```bash
terraform plan
```
<img width="1480" height="974" alt="Screenshot 2025-11-17 221905" src="https://github.com/user-attachments/assets/398bb82d-3698-48d1-9177-74775fc73731" />


3- applying infra code on AWS
```bash
terraform apply -auto-approve
```
<img width="1480" height="890" alt="Screenshot 2025-11-17 222550" src="https://github.com/user-attachments/assets/783b5a96-f088-4947-ad87-548841cb3034" />

4- Aws Console screenshots
<img width="1582" height="307" alt="Screenshot 2025-11-17 222746" src="https://github.com/user-attachments/assets/6e855e43-b6e6-4bfc-b0bb-5e71b05ed259" />

<img width="1614" height="693" alt="Screenshot 2025-11-17 222854" src="https://github.com/user-attachments/assets/973181b0-ddd3-4f3b-8b14-0d99074c8203" />

<img width="1575" height="676" alt="Screenshot 2025-11-17 222924" src="https://github.com/user-attachments/assets/941150af-61f7-45fb-93d6-7f1d304a14b1" />

5- Destroying infra
```bash
terraform init -auto-approve -destroy
```
<img width="1477" height="918" alt="Screenshot 2025-11-17 223146" src="https://github.com/user-attachments/assets/7f9a6e09-551b-439d-bc19-b4ff1240cde3" />
