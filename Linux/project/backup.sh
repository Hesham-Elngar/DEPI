#!/bin/bash
DATE=$(date +%F-%H%M)
mysqldump -u notesuser -p'password123' notesdb > /backup/notesdb-$DATE.sql
