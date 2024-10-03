<?php

$jugador1 = $_POST["jugador1"];
$jugador2 = $_POST["jugador2"];

$gato = $_POST["gato"];
//Array 
//$gato[0]=O, $gato[1]=X, $gato[2]=O
//$gato[3]=O, $gato[4]=X, $gato[5]=X
//$gato[6]=O, $gato[7]=O, $gato[8]=X

//Validar ¿Quién es el ganador?

if($gato[0] == "O" && $gato[1] == "O" && $gato[2] == "O"){
    echo "<h1>Ganador ".$jugador." O </h1>";
    return;
}

//Validar todos los casos de las líneas

?>