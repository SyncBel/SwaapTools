<?php
    //Obs: Preciso analisar o front para saber se é necessário alguma alteração
    include_once("banco.php");
    $banco = new Banco();
    $resultado = $banco->resultToArray("SELECT * FROM marca");
    if($resultado != null){
        echo json_encode($resultado);
    }
?>