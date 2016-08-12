from flask import Flask, render_template, send_from_directory, request, jsonify
from config import Config
import os

application = Flask(__name__)
application.config.from_object(Config)

@application.route('/')
def index():
    return render_template("index.html")

@application.route('/media/<path:path>')
def media(path):
    file = send_from_directory(application.config['MEDIA_DIR'], path)
    return file

if __name__ == '__main__':
    application.run(host="0.0.0.0", port=8000, debug=True)

