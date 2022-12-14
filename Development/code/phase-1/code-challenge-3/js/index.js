document.addEventListener("DOMContentLoaded", () => {
    //Fetch data
function fetchData() {
    fetch('http://localhost:3000/films')
    .then(resp => resp.json())
    .then(data => initialize(data))
}

 function initialize(films){
    const main = document.querySelector('main')
    for(let film of films){
    const h1 = document.createElement('h1')
        h1.innerHTML = film.name
        main.appendChild(h1)
    }

 }
 
})