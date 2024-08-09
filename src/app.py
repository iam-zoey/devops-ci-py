import subprocess
from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({"message": "Hello, World!"})

@app.route('/add/<int:a>/<int:b>')
def add(a, b):
    return jsonify({"result": a + b})

if __name__ == '__main__':
    # Start the logger script in a separate process
    subprocess.Popen(["python", "src/logger.py"])
    # Start the Flask app
    app.run(debug=True)
