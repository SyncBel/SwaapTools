<?php
    //Obs: Preciso analisar o front para saber se é necessário alguma alteração
    include_once("banco.php");
    $banco = new Banco();
    $cod_placamae = $_POST["cod_placavideo"];
    $cod_modelo = $_POST["cod_modelo"];
    $qnt_memoria = $_POST["qnt_memoria"];
    $interface = $_POST["interface"];
    $cod_soquete = $_POST["cod_soquete"];
    if($banco->queryNoResult("INSERT INTO placavideo (cod_placavideo, cod_modelo, qnt_memoria, interface ,cod_soquete) VALUES ({$cod_placavideo},{$cod_modelo},{$qnt_memoria},'{$interface}',{$cod_soquete})")){
        echo "Concluido, necessário fazer o direcionamento.";
    } else{
        echo "INSERT INTO placavideo (cod_placavideo, cod_modelo, qnt_memoria, interface, cod_soquete) VALUES ({$cod_placavideo},{$cod_modelo},{$qnt_memoria},'{$interface}',{$cod_soquete})";
    }
?>