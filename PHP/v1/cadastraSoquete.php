<?php
    //Obs: Preciso analisar o front para saber se é necessário alguma alteração
    include_once("banco.php");
    $banco = new Banco();
    $cod_soquete = $_POST["cod_soquete"];
    $descricao = $_POST["descricao"];
    if($banco->queryNoResult("INSERT INTO soquete (cod_soquete, descricao) VALUES ({$cod_soquete},'{$descricao}')")){
        echo "Concluido, necessário fazer o direcionamento.";
    } else{
        echo "INSERT INTO soquete (cod_soquete, descricao) VALUES ({$cod_soquete},'{$descricao}')";
    }
?>