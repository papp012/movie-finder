from flask import Flask, render_template

app = Flask('movie-finder')


@app.route('/')
def index():
    return render_template('index.html')


def main():
    app.run(debug=False)


if __name__ == '__main__':
    main()
