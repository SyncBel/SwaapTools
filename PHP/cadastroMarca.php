<?php
    //Obs: Preciso analisar o front para saber se é necessário alguma alteração
    include_once("banco.php");
    $banco = new Banco();
    $cod_marca = $_POST["cod_marca"];
    $descricao = $_POST["descricao"];
    if($banco->queryNoResult("INSERT INTO marca (cod_marca, descricao) VALUES ({$cod_marca},'{$descricao}')")){
        echo "Concluido, necessário fazer o direcionamento.";
    } else{
        echo "INSERT INTO marca (cod_marca, descricao) VALUES ({$cod_marca},'{$descricao}')";
    }
?>