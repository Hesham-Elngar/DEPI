## Section 6: Creating Hard Links and Soft Links

### ❓ What is the difference between a hard link and a soft link (symbolic link)?

- **Hard link**: Another file that points to the same **inode** which the original file points to.
- **Soft link (symbolic link)**: A file that points to the **original file name**, which in turn points to a certain inode.

---

### 🔗 How do you create a hard link in Linux?

```bash
ln old_file hardLink_file
```

### 🔗 How do you create a soft (symbolic) link in Linux?
```bash
ln -s old_file softLink_file
```

