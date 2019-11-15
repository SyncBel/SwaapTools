<?php
    //Obs: Preciso analisar o front para saber se é necessário alguma alteração
    include_once("banco.php");
    $banco = new Banco();
    $cod_ddd = $_POST["cod_ddd"];
    $descricao = $_POST["descricao"];
    if($banco->queryNoResult("INSERT INTO ddd (cod_ddd, descricao) VALUES ({$cod_ddd},'{$descricao}')")){
        echo "Concluido, necessário fazer o direcionamento.";
    } else{
        echo "INSERT INTO ddd (cod_ddd, descricao) VALUES ({$cod_ddd},'{$descricao}')";
    }
?>