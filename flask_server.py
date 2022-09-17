from flask import Flask
from flask import abort

app = Flask(__name__)

@app.route("/")
def hello_world():
    abort(101)
