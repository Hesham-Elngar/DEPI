1- initialize terraform provider and install plugins and library
```bash
terraform init
```
![alt text](<Screenshot 2025-11-17 221829.png>)

2- create dry-run to ensure everything before apply
```bash
terraform plan
```
![alt text](<Screenshot 2025-11-17 221905.png>)


3- applying infra code on AWS
```bash
terraform apply -auto-approve
```
![alt text](<Screenshot 2025-11-17 222550.png>)


4- Aws Console screenshots
![alt text](<Screenshot 2025-11-17 222746.png>)

![alt text](<Screenshot 2025-11-17 222854.png>)

![alt text](<Screenshot 2025-11-17 222924.png>)

5- Destroying infra
```bash
terraform init -auto-approve -destroy
```
![alt text](<Screenshot 2025-11-17 223146.png>)
