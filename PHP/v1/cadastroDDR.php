<?php
    //Obs: Preciso analisar o front para saber se é necessário alguma alteração
    include_once("banco.php");
    $banco = new Banco();
    $cod_ddr = $_POST["cod_ddr"];
    $descricao = $_POST["descricao"];
    if($banco->queryNoResult("INSERT INTO ddr (cod_ddr, descricao) VALUES ({$cod_ddr},'{$descricao}')")){
        echo "Concluido, necessário fazer o direcionamento.";
    } else{
        echo "INSERT INTO ddr (cod_ddr, descricao) VALUES ({$cod_ddr},'{$descricao}')";
    }
?>