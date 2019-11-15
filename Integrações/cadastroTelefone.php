<?php
    //Obs: Preciso analisar o front para saber se é necessário alguma alteração
    include_once("banco.php");
    $banco = new Banco();
    $cod_telefone = $_POST["cod_telefone"];
    $numero = $_POST["numero"];
    $tipo = $_POST["tipo"]; //Provavelmente será retirado
    $cod_ddd = $_POST["cod_ddd"];
    $cpf = $_POST["cpf"];
    if($banco->queryNoResult("INSERT INTO telefone (cod_telefone, numero, tipo, cod_ddd, cpf) VALUES ({$cod_telefone},'{$numero}','{$tipo}',{$cod_ddd},{$cpf})")){
        echo "Concluido, necessário fazer o direcionamento.";
    } else{
        echo "INSERT INTO telefone (cod_telefone, numero, tipo, cod_ddd, cpf) VALUES ({$cod_telefone},'{$numero}','{$tipo}',{$cod_ddd},{$cpf})";
    }
?>