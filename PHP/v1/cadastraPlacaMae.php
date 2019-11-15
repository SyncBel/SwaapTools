<?php
    //Obs: Preciso analisar o front para saber se é necessário alguma alteração
    include_once("banco.php");
    $banco = new Banco();
    $cod_placamae = $_POST["cod_placamae"];
    $cod_modelo = $_POST["cod_modelo"];
    $cod_soquete = $_POST["cod_soquete"];
    $cod_ddr = $_POST["cod_ddr"];
    if($banco->queryNoResult("INSERT INTO placamae (cod_placamae, cod_modelo, cod_soquete, cod_ddr) VALUES ({$cod_telefone},{$cod_modelo},{$cod_soquete},{$cod_ddr})")){
        echo "Concluido, necessário fazer o direcionamento.";
    } else{
        echo "INSERT INTO placamae (cod_placamae, cod_modelo, cod_soquete, cod_ddr) VALUES ({$cod_telefone},{$cod_modelo},{$cod_soquete},{$cod_ddr})";
    }
?>