//Write the url 
const url = "http://localhost:3000/films"
//Create an eventlistener to load the content in the DOM first
document.addEventListener('DOMContentLoaded', () => {
    //Fetch the data
    const fetchFirstFilm = () => {
        fetch(url + id)
       .then(response => response.json())
       .then(data => { renderFirstFilm(data) })
      }
       fetchFirstFilm();
  })

