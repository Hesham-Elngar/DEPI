# 📘 Note-Taking Web App on AWS EC2 with Backup Strategy

This project demonstrates how to deploy a simple **note-taking web application** using **Python Flask** and **MariaDB** on an **AWS EC2 instance (RHEL 9)** with a **fully automated backup strategy** using a separate **EBS volume**, with **scheduled backups triggered by a cron job** to ensure database safety and reliability.
---

## 📌 Table of Contents
- [🎯 Objective](#-objective)
- [🧰 Tech Stack](#-tech-stack)
- [🚀 Overview](#-overview)
- [⚙️ Setup & Deployment](#️-setup--deployment)
- [📦 Backup Strategy](#-backup-strategy)
- [🧪 Testing](#-testing)

---

## 🎯 Objective

A compact DevOps project that showcases:
- Provisioning a cloud VM (EC2) using AWS.
- Deploying a simple **Flask web application** with a **MariaDB** backend.
- Attaching and using an **EBS volume** for persistent backups.
- Automating periodic backups using a `cron` job.

---

## 🧰 Tech Stack

- **Cloud Provider:** AWS  
- **Compute:** EC2 (t2.micro, RHEL 9)  
- **App Framework:** Python Flask  
- **Database:** MariaDB  
- **Storage:** EBS volume mounted at `/backup`  
- **Automation:** Shell script + Cron job  
- **Language:** Python 3

---

## 🚀 Overview

A lightweight note-taking web application where users can submit short notes. Notes are stored in a MariaDB database, and periodic backups are automatically stored in an attached EBS volume.

---

## ⚙️ Setup & Deployment

1. **Provision EC2 (RHEL 9)** with required security group rules (HTTP + SSH).
<img width="1543" height="302" alt="image" src="https://github.com/user-attachments/assets/c2cfafba-75cd-4651-8707-d600ea22e716" />

2. **Install dependencies**:
   ```bash
   sudo dnf install python3-pip mariadb-server git -y
   pip3 install flask pymysql
   ```
3. **Clone the app repo** and run Flask:
   ```bash
   git clone https://github.com/your-username/notes-flask-app.git
   cd notes-flask-app
   python3 app.py
   ```
4. **Configure MariaDB**:
   - Start service: `sudo systemctl start mariadb`
   - Secure installation: `sudo mysql_secure_installation`
   - Create DB and table:
     ```sql
     CREATE DATABASE notesdb;
     USE notesdb;
     CREATE TABLE notes (
         id INT AUTO_INCREMENT PRIMARY KEY,
         content TEXT,
         timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
     );
     ```
5. **Attach and mount EBS**:
   ```bash
   sudo mkfs -t xfs /dev/xvdb
   sudo mkdir /backup
   sudo mount /dev/xvdb /backup
   ```
<img width="1531" height="400" alt="image" src="https://github.com/user-attachments/assets/4fbaefdd-4814-4193-bf1a-5fba03a776f1" />

<img width="1919" height="641" alt="image" src="https://github.com/user-attachments/assets/e40c1567-38b4-4e81-80c4-7bffd7d46364" />

---

## 📦 Backup Strategy

- Shell script `backup.sh` uses `mysqldump` to create DB dumps.
- Script output is saved in `/backup/notesdb-<timestamp>.sql`.
- Scheduled to run hourly using a cron job:
  ```bash
  * * * * * /home/ec2-user/backup.sh
  ```
<img width="1871" height="387" alt="image" src="https://github.com/user-attachments/assets/52e369c0-14ad-4d1f-9476-184702392d84" />

---

## 🧪 Testing

- Access the app via EC2 public IP.
- Submit notes and confirm they appear.
<img width="1919" height="621" alt="Screenshot 2025-08-01 210250" src="https://github.com/user-attachments/assets/3f3ee441-f774-4526-975d-d07d0dbba8d5" />

- Check that submitted data already stored in  mariaDB
<img width="1126" height="475" alt="image" src="https://github.com/user-attachments/assets/311aac33-d649-4733-badf-fdb74eacccb7" />


