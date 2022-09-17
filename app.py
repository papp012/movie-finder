from flask import Flask
from data import data_manager

app = Flask(__name__)


@app.route('/')
def index():
    movies = data_manager.get_all_movies()
    print(movies)
    return "Hello"


def main():
    app.run(debug=False)


if __name__ == '__main__':
    app.run(
        debug=True
    )
