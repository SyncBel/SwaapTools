<?php
    //Obs: Preciso analisar o front para saber se é necessário alguma alteração
    include_once("banco.php");
    $banco = new Banco();
    $cpf = '00100200345';
    $resultado = $banco->resultToArray("SELECT * FROM usuario WHERE cpf ={$cpf}");
    if($resultado != null){
        echo json_encode($resultado);
    }
?>