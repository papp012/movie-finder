from data import connection


@connection.connection_handler
def get_all_movies(cursor):
    query = "SELECT * FROM movies"
    cursor.execute(query)
    return cursor.fetchall()


@connection.connection_handler
def get_horror_movies(cursor):
    query = """SELECT *
            FROM movies
            LEFT JOIN movie_genres mg on movies.id = mg.movie_id
            LEFT JOIN genres g on mg.genre_id = g.id
            WHERE g.name LIKE 'Horror'"""
    cursor.execute(query)
    return cursor.fetchall()
