1- initialize terraform provider and install plugins and library
```bash
terraform init
```
<img width="975" height="588" alt="Screenshot 2025-11-17 233327" src="https://github.com/user-attachments/assets/b1e4c8e3-6d1e-4902-8a6a-361f23113648" />

2- create dry-run to ensure everything before apply
```bash
terraform plan
```
<img width="1496" height="922" alt="Screenshot 2025-11-18 001452" src="https://github.com/user-attachments/assets/50183694-3765-4a82-8939-274817ddd425" />


3- applying infra code on AWS
```bash
terraform apply -auto-approve
```
<img width="994" height="840" alt="Screenshot 2025-11-18 004158" src="https://github.com/user-attachments/assets/308a2c71-091c-4acb-822a-62511c6cee6d" />

---
4- Aws Console screenshots

<img width="1579" height="609" alt="Screenshot 2025-11-18 002852" src="https://github.com/user-attachments/assets/8b66507b-2655-4f95-9549-4388617cf755" />

<img width="1063" height="394" alt="Screenshot 2025-11-18 004304" src="https://github.com/user-attachments/assets/bd8c2431-baf7-489d-8756-32daaff15746" />

---

5- Destroying infra
```bash
terraform.exe destroy -auto-approve -target=aws_security_group.my_sg -target=aws_s3_bucket.my_bucket
```
<img width="1472" height="922" alt="Screenshot 2025-11-18 004414" src="https://github.com/user-attachments/assets/4c7654f8-17e8-4c16-9bb1-7743c533244a" />
