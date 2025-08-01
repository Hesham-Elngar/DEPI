from flask import Flask, request, redirect, render_template
import pymysql
from datetime import datetime

app = Flask(__name__)

def get_db_connection():
    return pymysql.connect(host='localhost',
                           user='notesuser',
                           password='password123',
                           db='notesdb',
                           cursorclass=pymysql.cursors.DictCursor)

@app.route('/', methods=['GET', 'POST'])
def index():
    conn = get_db_connection()
    cursor = conn.cursor()
    if request.method == 'POST':
        note = request.form['note']
        cursor.execute("INSERT INTO notes (content) VALUES (%s)", (note,))
        conn.commit()
    cursor.execute("SELECT * FROM notes ORDER BY created_at DESC")
    notes = cursor.fetchall()
    conn.close()
    return render_template('index.html', notes=notes)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)

