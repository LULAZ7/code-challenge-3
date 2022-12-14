    //Fetch data
function fetchData() {
    fetch('http://localhost:3000/films')
    .then(resp => resp.json())
    .then(data => displayDetails(data))
}

 function displayDetails(films){
    const main = document.querySelector('main')
    for(let film of films){
    const h1 = document.createElement('h1')
        h1.innerHTML = film.title
        main.appendChild(h1)
    }

    function listenClick() {
        const details = document.createElement('details')
        details.innerHTML=`
        <p>${film.id}</p>
        <p>${film.runtime}</p>
        <p>${film.capacity}</p>
        <p>${film.showtime}</p>
        <p>${film.tickets_sold}</p>
        <p>${film.description}</p>
        <img src>${film.image}
        `
        main.addEventListener('click', listenClick)
    }


    
 }

 
 
 
document.addEventListener("DOMContentLoaded", () =>{
    fetchData()
})
