from data import query


def get_all_movies():
    all_movies = query.get_all_movies()
    return all_movies


def get_horror_movies():
    horror_movies = query.get_horror_movies()
    return horror_movies
