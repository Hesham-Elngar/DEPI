# Section 1: Logging In and Accessing the System
---

## 🖥️ Login Task (GUI)

**Question:** What command do you use to open a terminal in RHEL via the GUI?

**Answer:**

1) From Activites , search about Terminal
or
```bash
2) Ctrl + Alt + T
```

---

## 🔐 Login Task (SSH)

**Question:** What command did you use to SSH into the system, and what was the IP address of your RHEL machine?

**Answer:**
```bash
ssh username@ipAddress_or_hostname
```
to get ip address
```bash
ifconfig
```
or
```bash
hostname -I
```
or
```bash
ip a
```
## ⚠️note that⚠️ 
ssh is cofigured by default on port 22 and if you want to check or change it 
```bash
vi /etc/ssh/ssh_config
```
then Restart the SSH service:
```bash
sudo restart sshd
```
then search on "Port" by starting from normal mode click on '/' then type the wanted word then press Enter
you can also change port for one time without editing ssh_config file 
```bash
ssh -p 2222 username@ipAddress_or_hostname
```

this photo declares how ssh client can access ssh server 

<img width="1091" height="592" alt="Screenshot 2025-07-30 204418" src="https://github.com/user-attachments/assets/8ed609b9-aeb4-4a4b-874e-5c0d17a092e0" />
