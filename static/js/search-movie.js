init()

function init() {
    searchMovieByTitle()
}

function searchMovieByTitle() {
    const searchButton = document.querySelector("#movie-search-button");
    searchButton.addEventListener('click', getMovies);
}

async function getMovies() {
    let searchedMovie = document.querySelector("#searched-movie-title").value;
    let resultMovies = await getApi(`api/get-overview-by-title/${searchedMovie}`)
    showMovies(resultMovies)
}


async function getApi(url) {
    let response = await fetch(url)
    return response.json()
}

function showMovies(resultMovies) {
    const movieContainer = document.querySelector('.movies');
    movieContainer.innerHTML = ""

    for (let movie of resultMovies) {
        console.log(movie)
        movieContainer.insertAdjacentHTML("beforeend", `<div class='movie-container'>${movie.title}</div>`)
    }

}


