from data import connection


@connection.connection_handler
def get_all_movies(cursor):
    query = "SELECT * FROM movies"
    cursor.execute(query)
    return cursor.fetchall()
