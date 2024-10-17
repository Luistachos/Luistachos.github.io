$(document).ready(function (){
    let cartas = new Array(54).fill(false);
    //funcion click del boton darcarta
    $("#dar_carta").click(function(){

        var b = true;
        var cont = 0;
        while(b){
            var num = Math.floor(Math.random()*54) + 1;
            console.log("Numero de carta= "+num);
            if(cartas[num-1] == true){
                continue;
            }else{
                $("#carta_activa").html("<img src='imagenes/"+num+".jpg'>");
                cartas[num-1] = true;
                b=false;
                cont++;
            }
            if(cont == 54){
                console.log("Ya se dieron todas las cartas");
                b=false;
            }
        }
    });
    cargarcartas();
    function cargarcartas(){
        var carta1=0;
        var carta2=0;
        let asignadas= new Array(54).fill(false);

        while(carta1 < 16){
            var num = Math.floor(Math.random()*54) + 1;
            if(asignadas[num-1] == false){
                $("#carta1").append("<div class='col-sm-3'><img class='img-fluid' src='imagenes/"+num+".jpg'></div>");
                asignadas [num-1] = true;
                carta1++;
            }else{
                continue;
            }
        }

        while(carta2 < 16){
            var num = Math.floor(Math.random()*54) + 1;
            if(asignadas[num-1] == false){
                $("#carta2").append("<div class='col-sm-3'><img class='img-fluid' src='imagenes/"+num+".jpg'></div>");
                asignadas [num-1] = true;
                carta2++;
            }else{
                continue;
            }
        }


    }
});