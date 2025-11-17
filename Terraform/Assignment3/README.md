1- initialize terraform provider and install plugins and library
```bash
terraform init
```
![alt text](<Screenshot 2025-11-17 233327.png>)

2- create dry-run to ensure everything before apply
```bash
terraform plan
```
![alt text](<Screenshot 2025-11-18 001452.png>)

3- applying infra code on AWS
```bash
terraform apply -auto-approve
```
![alt text](<Screenshot 2025-11-18 004158.png>)
---
4- Aws Console screenshots

![alt text](<Screenshot 2025-11-18 002852.png>)

![alt text](<Screenshot 2025-11-18 004304.png>)
---

5- Destroying infra
```bash
terraform.exe destroy -auto-approve -target=aws_security_group.my_sg -target=aws_s3_bucket.my_bucket
```
![alt text](<Screenshot 2025-11-18 004414.png>)