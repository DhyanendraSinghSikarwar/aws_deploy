from flask import Flask

app = Flask(__name__)


@app.route("/")
def root():
    return "Ok, its working", 200


if __name__ == "__main__":
    app.run(port=5005)
