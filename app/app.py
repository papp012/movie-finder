from flask import Flask, render_template, jsonify
from data import data_manager

app = Flask(__name__)


@app.route('/')
def index():
    movies = data_manager.get_all_movies()
    return render_template("index.html", movies=movies)


@app.route('/api/get-overview-by-title/<searchedTitle>')
def get_movies_by_title(searchedTitle):
    search_movies = data_manager.get_movies_by_title(searchedTitle)
    return jsonify(search_movies)


def main():
    app.run(debug=False)


if __name__ == '__main__':
    app.run(
        debug=True,
        port=5000,
        host="0.0.0.0"
    )
