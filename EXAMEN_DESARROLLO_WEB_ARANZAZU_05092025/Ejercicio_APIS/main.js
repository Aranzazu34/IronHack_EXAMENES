/**
3- (3ptos) Interface y presentación 
Como siempre, la página debe estar bien ordenada y al mismo tiempo ser estética
mente atractiva. ¡Dale que tú puedes! 

 **/

//Live Server
//127.0.0.1:550/index.html

let chuckURL = "https://api.chucknorris.io/jokes/random";
/*

 {
  "categories":[],
  "created_at":"2020-01-05 13:42:29.569033",
  "icon_url":"https://api.chucknorris.io/img/avatar/chuck-norris.png",
  "id":"H_IEyJZERVeGI5c9EUIeYA",
  "updated_at":"2020-01-05 13:42:29.569033",
  "url":"https://api.chucknorris.io/jokes/H_IEyJZERVeGI5c9EUIeYA",
  "value":"Chuck Norris can speak in sign language."
 }
*/

const imagenChuck = document.getElementById("imagen");
const valueChuck = document.getElementById("value");

function mostrarJokeChuckNorris() {
  //fetch conecta con la URL y concatena metodos (then y el catch)
  fetch(chuckURL)
    .then((respuesta) => respuesta.json()) //convierte a JSON real la info recibida HTTP
    .then((data) => {
      //otra función anónima y aquí ya puedes ejecutar
      //el código o llamar a otras funciones
      console.log("Chiste: ", data.value);

      //mostrar en pantalla DOM
      imagenChuck.src = `${data.icon_url}`;
      valueChuck.innerHTML = data.value;
    })
    .catch((err) => console.log(err));
}

mostrarJokeChuckNorris();

let jokeURL = "http://www.official-joke-api.appspot.com/random_joke";
// {"type":"general","setup":"Why are skeletons so calm?","punchline":"Because nothing gets under their skin.","id":305}

const setupRJoke = document.getElementById("setup");
const punchlineRJoke = document.getElementById("punchline");

function mostrarRandomJokes() {
  //fetch conecta con la URL y concatena metodos (then y el catch)
  fetch(jokeURL)
    .then((respuesta) => respuesta.json()) //convierte a JSON real la info recibida HTTP
    .then((data) => {
      //otra función anónima y aquí ya puedes ejecutar
      //el código o llamar a otras funciones
      console.log("Setup: ", data.setup);
      console.log("Punchline: ", data.punchline);

      //mostrar en pantalla DOM
      setupRJoke.innerHTML = data.setup;
      punchlineRJoke.innerHTML = data.punchline;
    })
    .catch((err) => console.log(err));
}

mostrarRandomJokes();
