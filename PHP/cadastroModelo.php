<?php
    //Obs: Preciso analisar o front para saber se é necessário alguma alteração
    include_once("banco.php");
    $banco = new Banco();
    $cod_modelo = $_POST["cod_modelo"];
    $cod_marca = $_POST["cod_marca"];
    $descricao = $_POST["descricao"];
    if($banco->queryNoResult("INSERT INTO modelo (cod_modelo, cod_marca, descricao) VALUES ({$cod_modelo},{$cod_marca},'{$descricao}')")){
        echo "Concluido, necessário fazer o direcionamento.";
    } else{
        echo "INSERT INTO modelo (cod_modelo, cod_marca, descricao) VALUES ({$cod_modelo},{$cod_marca},'{$descricao}')";
    }
?>