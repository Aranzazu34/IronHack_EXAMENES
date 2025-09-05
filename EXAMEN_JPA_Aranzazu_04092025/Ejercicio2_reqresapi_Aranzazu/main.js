/**
2- (3 puntos) En la dirección https://reqres.in/api/users/post, crea un nuevo perfil 
con los atributos first_name, last_name y email. 

Mostrar en consola el resultado (no te preocupes por el número de ID automático que genera la API).
 **/

//Live Server
//127.0.0.1:550/index.html

// leer boton de añadir usuario:
const botonNuevoUsuario = document.getElementById("nuevousuario");
botonNuevoUsuario.addEventListener("click", nuevoUsuario);

//inicialmente probado con "https://reqres.in/api/users", pero al poner el post vi que funcionó o no se
//ha reiniciado algo
const urlReqRes = "https://reqres.in/api/users/post";
const apiKey = "reqres-free-v1";

// añadir usuario: Nombre, apellido e email
const formulario = document.getElementById("formulario");

//Evento para proceder a agregar el usuario
formulario.addEventListener("submit", function (event) {
  event.preventDefault(); //evita que se envie el formulario

  //obtenemos el dato de la web
  const nombre = document.getElementById("nuevonombre").value;
  const apellido = document.getElementById("nuevoapellido").value;
  const email = document.getElementById("nuevoemail").value;

  //se agrega el usuario a la api
  nuevoUsuario(nombre, apellido, email);
});

function nuevoUsuario(nombre, apellido, email) {
  fetch(urlReqRes, {
    method: "POST",
    headers: {
      "Content-type": "application/json",
      "x-api-key": apiKey,
    },
    //conversión objeto JS en texto JSON, para que se reconozca
    body: JSON.stringify({
      //obtener el id que asigne la API id: 13,
      first_name: nombre,
      last_name: apellido,
      email: email,
    }),
  })
    //recibimos respuesta
    .then((res) => res.json())
    //mostrar el objeto usuario creado
    .then((usuario) => {
      console.log("usuario creado!", usuario);
    })
    .catch((err) => console.log("Error al añadir usuario", err.message));
}
