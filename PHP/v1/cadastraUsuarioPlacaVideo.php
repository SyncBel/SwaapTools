<?php
    //Obs: Preciso analisar o front para saber se é necessário alguma alteração
    include_once("banco.php");
    $banco = new Banco();
    $cpf = $_POST["cpf"];
    $cod_placavideo = $_POST["cod_placavideo"];
    $cod_usuarioplacavideo = $_POST["cod_usuarioplacavideo"];
    $tempo_uso = $_POST["tempo_uso"];
    if($banco->queryNoResult("INSERT INTO usuarioplacavideo (
        cod_soquete, 
        descricao) 
        VALUES (
            {$cpf},
            {$cod_placavideo},
            {$cod_usuarioplacavideo},
            '{$tempo_uso}'
            )")){
        echo "Concluido, necessário fazer o direcionamento.";
    } else{
        echo "INSERT INTO usuarioplacavideo (
            cod_soquete, 
            descricao) 
            VALUES (
                {$cpf},
                {$cod_placavideo},
                {$cod_usuarioplacavideo},
                '{$tempo_uso}'
                )";
    }
?>