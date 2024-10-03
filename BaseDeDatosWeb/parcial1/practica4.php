<?php

    $aciertos = 0;
    $pregunta1 = $_POST["pregunta1"];
    $pregunta2 = $_POST["pregunta2"];
    $pregunta3 = $_POST["pregunta3"];
    $pregunta4 = $_POST["pregunta4"];
    $pregunta5 = $_POST["pregunta5"];
    $pregunta6 = $_POST["pregunta5"];
    $pregunta7 = $_POST["pregunta5"];
    $pregunta8 = $_POST["pregunta5"];
    $pregunta9 = $_POST["pregunta5"];
    $pregunta10 = $_POST["pregunta5"];

    //valida pregunta 1 1. Ano de lanzamiento del juego THe leyend of zelda ocarina of time
    echo "<h3>1. Año de lanzamiento del juego The leyend of zelda ocarina of time </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta1." ---- Correcta = 1998</h5>";
    if($pregunta1 == "1998"){
        $aciertos++;
        echo "<img src='corecto.jpg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecto.jpg' width='50px'><hr>";
    }
    //------FIN de la pregunta 1 ------------------

    //Valido pregunta 2 Artefacto antiguo capaz de alterar el espacio tiempo por medio de melodias.
    echo "<h3>2. _____________ Artefacto antiguo capaz de alterar el espacio tiempo por medio de melodias.</h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta2." ---- Correcta = Ocarina</h5>";
    if(strtoupper($pregunta2) == "Ocrina"){
        $aciertos++;
        echo "<img src='corecto.jpg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecto.jpg' width='50px'><hr>";
    }
    //Fin de la pregunta 2 -----------------------------

    //Pregunta 3 - se deben validar 2 opciones primera y tercera
    echo "<h3>3. ¿Cual de las siguentes opciones son armas conseguibles en el juego Zelda? (Selecciona 2)</h3>";
    echo "<h5>Repuesta seleccionada ".implode(",", $pregunta3)." ---- Correcta = Espada maestra, Bumerang</h5>";
    $p3_respuestas_correctas = 0;

    if(count($pregunta3) == 2){
        for($i=0; $i<count($pregunta3); $i++){
            if($pregunta3[$i] == "Bumerang" || $pregunta3[$i] == "Espada maestra"){
                $p3_respuestas_correctas ++;
            }
        }
        if($p3_respuestas_correctas == 2){
            $aciertos++;
            echo "<img src='corecto.jpg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecto.jpg' width='50px'><hr>";
        }
    } else {
        echo "<img src='incorrecto.jpg' width='50px'><hr>";
    }
    //----------FIN pregunta 3 ------------------------------------

    //valida pregunta 4. ¿Quen es el campeon de la raza Goron en Breath of the wild?

        echo "<h3>4. ¿Quen es el campeon de la raza Goron en Breath of the wild?</h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta4." ---- Correcta = Daruk</h5>";
        if($pregunta4 == "Daruk"){
            $aciertos++;
            echo "<img src='corecto.jpg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecto.jpg' width='50px'><hr>";
        }
    //------FIN de la pregunta 4 ------------------

    //Valido pregunta 5 es una función de php que sirve para contar los elementos de un array.
        echo "<h3>5. _____________ Fue el causante de la maldicion de reenarnacion en zelda y link.</h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta5." ---- Correcta = Heraldo</h5>";
        if(strtoupper($pregunta5) == "Heraldo"){
            $aciertos++;
            echo "<img src='corecto.jpg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecto.jpg' width='50px'><hr>";
        }
    //Fin de la pregunta 2 -----------------------------

    echo "CALIFICACIÓN FINAl = " . ($aciertos * 10) . "%";

?>