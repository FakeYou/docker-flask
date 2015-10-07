from app import app
from flask import render_template
import time

@app.route('/')
@app.route('/index')
def index():
    now = time.strftime("%H:%M:%S")

    print(now)

    return render_template('index.html', now=now)
