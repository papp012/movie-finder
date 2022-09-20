from data import query


def get_all_movies():
    all_movies = query.get_all_movies()
    return all_movies


def get_movies_by_title(searched_title):
    movies_by_title = query.get_movies_by_title(searched_title)
    return movies_by_title
