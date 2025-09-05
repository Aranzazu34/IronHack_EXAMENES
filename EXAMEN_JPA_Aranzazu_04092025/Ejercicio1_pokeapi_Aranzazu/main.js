/**
 * 1- (2 puntos) En base al JSON del pokemon 19 de la Pokeapi 
 * (https://pokeapi.co/api/v2/pokemon/19/), con o sin fetch, indica cómo llegarías a los siguientes datos 
    de ese objeto:
    
    - habilities / del 1 / is hidden (tiene que dar false)
    - name (tiene que ser Rattata)
    - game_indices / 5 / version name (tiene que ser crystal)
    - Moves 2 / name (es tackle)
 **/

//Live Server
//127.0.0.1:550/index.html

let pokemonURL = "https://pokeapi.co/api/v2/pokemon/19";

//fetch conecta con la URL y concatena metodos (then y el catch)
fetch(pokemonURL)
  .then((response) => response.json()) //convierte a JSON real la info recibida HTTP
  .then((data) => {
    //otra función anónima y aquí ya puedes ejecutar
    //el código o llamar a otras funciones
    console.log("todo:", data);
    console.log("abilities:", data.abilities);
    console.log("abilities, el primero", data.abilities[0]);
    console.log(
      "abilities, el primero, solo valor de 'is_hidden'",
      data.abilities[0].is_hidden
    );
  })
  .catch((err) => console.log(err));
