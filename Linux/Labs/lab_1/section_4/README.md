# 🧑‍💻Section 4: Learning Command Syntax
---

Command with Options:

1️⃣Use the ls command with options to display detailed information about the files in /etc.

Question: What is the command you used to list files in long format? How many files or directories are listed in /etc?

```bash
 ls -ltrh /etc/
```

`output is`

<img width="799" height="857" alt="image" src="https://github.com/user-attachments/assets/062d440f-f5b7-4392-8540-cd24b31683e4" />


### 👉 to know number of files and directories
```bash
ls -ltrh /etc/ | wc -l
```
### 👉 to know number of files 
```bash
find /etc/ -maxdepth 1 -type f | wc -l
```
### 👉 to know number of directories
```bash
find /etc/ -maxdepth 1 -type d | wc -l
```





