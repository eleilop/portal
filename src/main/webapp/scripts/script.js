 
function cambiarContenido(url, id) {
 
    let element;
    
    for (let i = 0; i < 6; i++){
        element = document.getElementById(i.toString());
        if (element!== null && element.classList.contains("selected")){
            element.classList.remove("selected");
        }
    }
 
    document.getElementById(id).classList.add("selected");
 
 
    let iframe = document.getElementById("contenido");
    iframe.src = url;
}
 
function irLogin() {
    window.location.href = "./jsp/login.jsp";
}

function detColoresNoticias(id){
    var cont = document.getElementsByClassName("cont")[0];
    var img= document.getElementsByTagName("img")[0];
    var hr=document.getElementsByTagName("hr")[0];

    switch(id){
        case 1 :
            cont.classList.add('cesurColor');
            img.classList.add('cesurColor');
            hr.classList.add('cesurColor');
            break;

        case 2 :
            cont.classList.add('picassoColor');
            img.classList.add('picassoColor');
            hr.classList.add('picassoColor');
            break;

        case 3 :
            cont.classList.add('belenColor');
            img.classList.add('belenColor');
            hr.classList.add('belenColor');
            break;

        case 4 :
            cont.classList.add('turingColor');
            img.classList.add('turingColor');
            hr.classList.add('turingColor');
            break;

        case 5 :
            cont.classList.add('joseColor');
            img.classList.add('joseColor');
            hr.classList.add('joseColor');
            break;

        default : break;
    }
}