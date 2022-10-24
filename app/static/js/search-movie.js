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

function convertReleaseDate(releaseDate) {
    let year = releaseDate.split(" ")[3];
    let month = releaseDate.split(" ")[2];
    let day = releaseDate.split(" ")[1]
    return `${year}-${month}-${day}`
}

function showMovies(resultMovies) {
    const movieContainer = document.querySelector('.movies');
    movieContainer.innerHTML = ""

    for (let movie of resultMovies) {
        let releaseDate = convertReleaseDate(movie.year)
        movieContainer.insertAdjacentHTML("beforeend", `<div class="movie-container"><div class="movie-title">${movie.title}</div>
                    <div class="movie-year">Release date: 2031-01-03</div>
                    <div class="movie-runtime">Runtime: ${movie.runtime} h</div></div>`)
    }
}


