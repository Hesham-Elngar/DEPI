# Section 2: Understanding Bash Shell 

![CmdCommandGIF (2)](https://github.com/user-attachments/assets/e2a5e3c3-897a-4692-a24d-30426998d701)

## ❓Question: What is the command to check the current shell? What output did you get?
💡 Answer: \
 the command is
```bash
echo $SHELL
```
the output is 
```bash
/bin/bash
```

💡 Another Solution \
the command is
```bash
ps -p $$
```
the output is 
```bash
    PID TTY          TIME CMD
   4610 pts/1    00:00:01 bash
```
🔹`ps` is command to display running process \
🔹`$$` is special variable for PID of shell you're currently using  

