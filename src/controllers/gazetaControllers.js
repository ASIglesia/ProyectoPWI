const databaseConnection = require('../../config/database')

//pagina principal /index
    //Separa articulos en base a razon de popularidad
/*
    //no funciona, razones posibles: pendiente asincronia
const renderHome =(req,res)=>{
    let recientes=[];
    let masVisto=[];

    databaseConnection.query("SELECT * FROM noticiasgazeta WHERE razon_pop = 'reciente'", (error, data) => {
        if (error) {
            console.log(error);
        } else {
            return recientes = data;
        }
    });
    databaseConnection.query("SELECT * FROM noticiasgazeta WHERE razon_pop = 'mas-vistos'", (error, data) => {
        if (error) {
            console.log(error);
        } else {
            masVisto = data;
        }
    })
    console.log(recientes,masVisto)
    //res.render('pages/index',{ recientes,masVisto })
    res.send("recibido")
}
*/
    //Funciona, sin embargo aunque funcione ahora, es de utilidad limitada en el futuro debido a como asigna sus valores
const renderHome = (req,res)=>{
databaseConnection.query("SELECT * FROM noticiasgazeta", (error, data) => {
            if (error) {
              console.log(error);
            } else {
              const recientes=[];
              const masVisto=[];

              for(item of data){
                if(item.razon_pop === "reciente"){
                  recientes.push(item)
                }else{
                  masVisto.push(item)
                }
              }

              res.render("pages/index", { recientes,masVisto });
            }
          }
    )
}

//pagina de categorias
const catLista = (req,res)=>{
    res.render('pages/categorias')
};
//categorias, todas, encontrar una mejor forma de hacer esto
    //en teoria, se deberia repetir esto por cada una de las categorias, esperare a que halla mejores herramientas para esto que no involucren repeticion innecesaria
const quimicaListado = (req,res)=>{
    databaseConnection.query('SELECT * FROM noticiasgazeta WHERE categoria="quimica" ORDER BY id DESC',(error,data)=>{
        if(error){
            console.log(error)
        }else{
            res.render('pages/quimica',{
                data
            })
        }
    })
};

//registro de usuarios
const getForm= (req,res)=>{
    res.render('pages/registrate');
};

const addnewUser =(req,res)=>{
    const {nombre_usuario,nivel_acceso,contraseña,fecha_nacimiento,emailusuario}= req.body;
         databaseConnection.query('INSERT INTO usuariosgazeta(nombre_usuario,nivel_acceso,contraseña,fecha_nacimiento,emailusuario)VALUES(?,?,?,?,?)',[nombre_usuario,nivel_acceso,contraseña,fecha_nacimiento,emailusuario],(error,data)=>{
        if(error){
            console.log(error)
        }else{
            res.redirect('/')
        }
    });
};
//inicio de sesion
    //investigar como
//agregar metodo de ingreso de articulos de noticias
    //temas necesarios o requisitos posibles: 
        /*
        Dinamizar el sistema de separacion de noticias para la pagina principal para admitir una mayor cantidad de noticias sin afectar su apariencia o funcion
        Discriminar entre usuario tipo lector, autor, y (idealmente) moderador
        Encontrar un metodo de manejar texto con formato, para no ingresar un articulo de noticias entero en la DB
        */
//exportar
    module.exports= {
    renderHome,
    catLista,
    quimicaListado,
    getForm,
    addnewUser
};