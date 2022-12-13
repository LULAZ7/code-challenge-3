//Fetch data
 const data = 'http://localhost:3000/films'
fetch(data)
.then(res=> res.json())
.then(initialize)

function initialize(films){
    console.log(movie);
    //create a loop
    for(let film of films)
        movieList(movie)
}

function movieList(){
    let ticketsRemain = movie.capacity - movie.tickets_sold;
}

function showTickets(movie){
    let ticketsAll = movie.capacity - movie.tickets_sold;
}
