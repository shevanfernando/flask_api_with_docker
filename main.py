from flask import Flask, request

app = Flask(__name__)

__author__ = "Shevan Fernando"


@app.route('/', methods=['GET'])
def route():
    return """
                <!DOCTYPE html>
                <head>
                <title>API Landing</title>
                </head>
                <body>
                    <h2>Hello there! This is a simple API using Flask.</h2>
                </body>
            """


@app.route('/get-greeting', methods=["POST"])
def get_greeting():
    data = request.get_json()
    return f'Hello, {data.get("user_name")}!'
