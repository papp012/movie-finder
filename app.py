from flask import Flask, render_template
from data import data_manager

app = Flask(__name__)


@app.route('/')
def index():
    movies = data_manager.get_all_movies()
    horror_movies = data_manager.get_horror_movies()
    print(horror_movies)
    return render_template("index.html")


def main():
    app.run(debug=False)


if __name__ == '__main__':
    app.run(
        debug=True
    )
