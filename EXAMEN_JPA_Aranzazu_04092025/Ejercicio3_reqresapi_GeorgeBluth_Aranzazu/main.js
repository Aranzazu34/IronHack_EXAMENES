/**
3- (3 puntos) Muestra en pantalla mediante <div> o/y <p> estos resultados: 
nombre, apellidos email e imagen del primer elemento en el array (George Bluth) (ver 
imagen abajo).
 **/

//Live Server
//127.0.0.1:550/index.html

let berryURL = "https://pokeapi.co/api/v2/berry/2";

const imagenBerry = document.getElementById("imagen");
const idBerry = document.getElementById("idberry");
const nombreBerry = document.getElementById("nombreberry");
const firmnessBerry = document.getElementById("firmnessberry");
const flavor2Berry = document.getElementById("flavor2berry");

function mostrarPokeChesto() {
  //fetch conecta con la URL y concatena metodos (then y el catch)
  fetch(berryURL)
    .then((respuesta) => respuesta.json()) //convierte a JSON real la info recibida HTTP
    .then((data) => {
      //otra función anónima y aquí ya puedes ejecutar
      //el código o llamar a otras funciones
      console.log("todo:", data);

      console.log("Firmness:", data.firmness.name);
      console.log("3 flavor:", data.flavors[2].flavor.name);
      console.log("id:", data.id);
      console.log("Nombre:", data.name);
      console.log("Imagen ruta:", data.natural_gift_type.url);

      //mostrar en pantalla
      //dentro del parrafo vacío irá el nombre:
      idBerry.innerHTML = data.id;
      nombreBerry.innerHTML = data.name;
      firmnessBerry.innerHTML = data.firmness.name;
      flavor2Berry.innerHTML = data.flavors[2].flavor.name;

      //en la imagen, asignamos el source (src) de la imagen que queremos:
      imagenBerry.src = `${data.natural_gift_type.url}`;

      //* "natural_gift_type":{"name":"water","url":"https://pokeapi.co/api/v2/type/11/"},
    })
    .catch((err) => console.log(err));
}

mostrarPokeChesto();

/**
 * {"firmness":{"name":"super-hard","url":"https://pokeapi.co/api/v2/berry-firmness/5/"},
 *  "flavors":[{"flavor":{"name":"spicy","url":"https://pokeapi.co/api/v2/berry-flavor/1/"},"potency":0},
 *             {"flavor":{"name":"dry","url":"https://pokeapi.co/api/v2/berry-flavor/2/"},"potency":10},
 *             {"flavor":{"name":"sweet","url":"https://pokeapi.co/api/v2/berry-flavor/3/"},"potency":0},
 *             {"flavor":{"name":"bitter","url":"https://pokeapi.co/api/v2/berry-flavor/4/"},"potency":0},
 *             {"flavor":{"name":"sour","url":"https://pokeapi.co/api/v2/berry-flavor/5/"},"potency":0}
 *            ],
 * "growth_time":3,
 * "id":2,
 * "item":{"name":"chesto-berry","url":"https://pokeapi.co/api/v2/item/127/"},
 * "max_harvest":5,
 * "name":"chesto",
 * "natural_gift_power":60,
 * "natural_gift_type":{"name":"water","url":"https://pokeapi.co/api/v2/type/11/"},
 * "size":80,
 * "smoothness":25,
 * "soil_dryness":15}
 *
 *
 */
/*
// directo con todos los Berry:

let berryURL2 = "https://pokeapi.co/api/v2/Berry";

fetch(berryURL2)
.then((respuesta) => respuesta.json()) 
.then((data) => {
    console.log("desde URL general Berry:", data.results[3].name);
})
.catch((error) => console.log(error));
  */
